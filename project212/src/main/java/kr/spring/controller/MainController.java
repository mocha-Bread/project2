package kr.spring.controller;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.PutObjectRequest;
import kr.spring.entity.Login;
import kr.spring.entity.PredictionResponse;
import kr.spring.entity.SimilarLesion;
import kr.spring.entity.UploadHistory;
import kr.spring.entity.UserService;

import kr.spring.entity.Image;
import kr.spring.entity.ImageDecoder;
import kr.spring.entity.ImageEncoder;
import kr.spring.entity.result;
import kr.spring.mapper.ImageUploadMapper;
import kr.spring.mapper.SimilarLesionMapper;
import kr.spring.mapper.UploadHistoryMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

@Controller
public class MainController {
	
		@RequestMapping("/")
		public String main() {
			System.out.println("완료");
			return "main";
			
	    }
	
	@Autowired
	private ImageUploadMapper mapper;
	
	@Autowired
	private UserService userService;
	
    @Autowired
    private UploadHistoryMapper uploadHistoryMapper;
    
	@Autowired
	private SimilarLesionMapper SimilarLesionMapper ;
    
    private String bucketName = "project212";
    private final AmazonS3 s3Client; // AmazonS3 빈을 주입받기 위한 필드 추가
    public MainController(AmazonS3 s3Client) {
        this.s3Client = s3Client;
    }
    
    
    @PostMapping("/imageupload.do")
    @ResponseBody
    public Map<String, String> uploadImage(@RequestParam("image") MultipartFile image,HttpSession session) throws IOException {
    	
        File file = convertMultiPartToFile(image);
        String fileName = generateFileName(image);
        uploadFileTos3bucket(fileName, file);
        file.delete();
    
        Login user = (Login) session.getAttribute("info");
        String photo_date = LocalDate.now().toString();
        String user_id = user.getUser_id();

        String photo_link = String.format("https://s3.%s.amazonaws.com/%s/%s", 
            "ap-northeast-2", // 리전 이름
            bucketName, // 버킷 이름
            fileName // 파일 이름
        );
        Image image2 = new Image(photo_date, photo_link, user_id);

        mapper.uploadImage(image2);
        
        RestTemplate restTemplate = new RestTemplate();

        String predictUrl = "http://127.0.0.1:5000/predict";

     // Create a map for the request body
     Map<String, String> body = new HashMap<>();
     body.put("url", photo_link);
     

     // Set the headers
     HttpHeaders headers = new HttpHeaders();
     headers.setContentType(MediaType.APPLICATION_JSON);

     // Create the request entity
     HttpEntity<Map<String, String>> requestEntity = new HttpEntity<>(body, headers);
     
     // Send the request
     ResponseEntity<PredictionResponse> response = restTemplate.exchange(predictUrl, HttpMethod.POST, requestEntity, PredictionResponse.class);
     PredictionResponse responseBody = response.getBody();
 
       
       
       
     // Parse the response body
     PredictionResponse item = responseBody;
     
     String lesion_name =  item.getLesion_name();
     String probability = Double.toString(item.getProbability());
     String image5 = item.getImage();
     String overlay_image = item.getOverlay_image();
     String processed_activation_map = item.getProcessed_activation_map();
     byte[] encodedImage1 = (byte[]) item.getEncodedImage1();
  
     String lesion_code = "11";
     result image3 = new result(lesion_code,lesion_name, user_id ,encodedImage1,photo_link);

     ((ImageUploadMapper) mapper).resultUpload(image3);
     Map<String, String> response2 = new HashMap<>();
    
     response2.put("uploadedImageLink", photo_link);
     response2.put("probability", probability);

     
     response2.put("image", image5);
     response2.put("overlay_image", overlay_image);
     
     String encodedImage = Base64.getEncoder().encodeToString(encodedImage1);
//     System.out.println("11단계");
//     BufferedImage decodedImage = ImageDecoder.decodeBase64ToImage(overlay_image);
//     System.out.println("12단계");
//     String encodedImage = ImageEncoder.encodeImageToBase64(decodedImage, "png"); // assuming the image is in PNG format
     
//     response2.put("encodedImage", encodedImage);
     response2.put("encodedImage1", encodedImage);
     
     
     response2.put("processed_activation_map", processed_activation_map);

     response2.put("result", lesion_name);


     return response2;
        
        // Extract the value of "result"

    }

    private File convertMultiPartToFile(MultipartFile file) throws IOException {
        File convFile = new File(file.getOriginalFilename());
        FileOutputStream fos = new FileOutputStream(convFile);
        fos.write(file.getBytes());
        fos.close();
        return convFile;
    }

     
    private String generateFileName(MultipartFile multiPart) {
        return new Date().getTime() + "-" + multiPart.getOriginalFilename().replace(" ", "_");
    }

    private void uploadFileTos3bucket(String fileName, File file) {
    	
        s3Client.putObject(new PutObjectRequest(bucketName, fileName, file));
    }


	public ImageUploadMapper getMapper() {
		return mapper;
	}


	public void setMapper(ImageUploadMapper mapper) {
		this.mapper = mapper;
	}
	
	

    @PostMapping(value = "/register")
    public String register(Login login) {
    	
    	userService.registerUser(login);
        return "main"; // 회원가입  성공하면 메인으로
    }
    
    @PostMapping("/login")
    public String login(Login login, Model model, RedirectAttributes rttr, HttpSession session) {
    	 
        Login user = userService.Login(login.getUserID(), login.getPassword());
        
        if (user != null) {
            session.setAttribute("info", user);
            
            model.addAttribute("mTitle", "로그인 성공");
            model.addAttribute("mMsg", user.getUser_id() + "님 환영합니다.");
            ;
        } else {
            model.addAttribute("mTitle", "로그인 실패");
            model.addAttribute("mMsg", "아이디와 비밀번호를 확인하세요");
            
        }
        
      return "main";
    }
    




    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes rttr) {
    	session.invalidate();
    	
    	rttr.addFlashAttribute("mTitle", "로그아웃 성공");
    	rttr.addFlashAttribute("mMsg", "성공적으로 로그아웃하였습니다.");
    	
    	return "redirect:/";
    	
    }
    
    @PostMapping("/mainUI")
    @ResponseBody
    public Map<String, Object> mainUI(HttpSession session) {
        Map<String, Object> response = new HashMap<>();
         
        Login loginInfo = (Login) session.getAttribute("info");
        
        if (loginInfo != null) {
            String userId = loginInfo.getUserID();
            Login userDetails = userService.getUserInfo(userId);
            
            if (userDetails != null) {
                response.put("user_id", userDetails.getUserID());
                response.put("user_name", userDetails.getUserName());
                response.put("medical_number", userDetails.getMedicalNumber());
                
            } else {
                // 사용자 정보가 없는 경우
                response.put("error", "User details not found");
                
            }
        } else {
            // 유저가 인증되지 않았을 때 처리
            response.put("error", "User not authenticated");
            
        }
        
        return response;
        
    }
    @PostMapping("/additionalInfo")
    @ResponseBody
    private Map<String, Object> additionalInfo(HttpSession session) {
        Login loginInfo = (Login) session.getAttribute("info");

        Map<String, Object> response = new HashMap<>();

        // 사용자가 로그인한 경우에만 처리
        if (loginInfo != null) {
        	String userId = loginInfo.getUserID();

            // 쿼리에 사용자 ID 사용
            List<UploadHistory> allData = uploadHistoryMapper.findAllLesionNamesAndPhotoNumbers(userId);

            List<String> encodedImages = new ArrayList<>();

            for (UploadHistory item : allData) {
                String encodedImage = Base64.getEncoder().encodeToString(item.getEncodedImage1());
                encodedImages.add(encodedImage);
            }

            response.put("uploadHistory", allData);
            response.put("encodedImages", encodedImages);
        } else {
            // 사용자가 로그인하지 않은 경우 처리
            response.put("error", "사용자가 로그인하지 않았습니다");
        }

        return response;
    }
    @PostMapping("/LesionDescription")
    @ResponseBody
    public Map<String, Object> getLesionDescription(@RequestParam String lesion_name) {
        Map<String, Object> response = new HashMap<>();

        // SimilarLesionService에서 데이터 가져오기
        SimilarLesion similarLesion = SimilarLesionMapper.getSimilarLesionByLesionName(lesion_name);
        
        if (similarLesion != null) {
            // 이미지 경로와 설명 가져오기
            String imagePaths = similarLesion.getLesion_photos();
            String explanations = similarLesion.getExplanation();
            System.out.println("3단계");
            response.put("imagePaths", imagePaths);
            System.out.println(imagePaths);
            response.put("explanations", explanations);
            System.out.println(explanations);
            return response;
        } else {
            // 해당 이름의 병변이 없을 경우
            response.put("error", "No data found for the given lesion name.");
            
            return response;
        }
    }
    }




    

