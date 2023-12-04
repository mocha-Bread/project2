<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
   Dimension by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en" xmlns:th="http://www.thymeleaf.org">
   <head>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>GOAT.SNPPY</title>
      <style>
		      @keyframes rotate {
	            0% { transform: rotate(0deg); }
	            100% { transform: rotate(360deg); }
	        }
	        @font-face {
		    font-family: 'intelone-mono-font-family-regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/intelone-mono-font-family-regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
	    
	
	        #loadingImage {
            display: none;
            width: 50px;
            height: 50px;
        }
      
         #header {
            color: #ffffff;
         }
         
         a {
            color: #ffffff;
         }
         
         a:hover {
          color: #eaeaea; /* 밝은 회색으로 설정 */
          }
          
          a:visited {
           color: #ffffff; /* 어두운 회색으로 설정 */
          }
          
          h2.major {
             color: #ffffff;
          }
          
          header .use-middle li a[href="<c:url value='/logout'/>"] {
          color: #ffffff; /* 로그아웃 링크의 색상 변경 */
        }
      
        header li a[href="href=#mypage"] {
          color: #ffffff; /* 마이페이지 링크의 색상 변경 */
        }
          
          .modal-footer .btn {
          color: #000000 !important; /* 검정색 */
          }
          
          #mypage {
             color: #ffffff;
          }
         
         #bg:after {
              -moz-transform: scale(1.125);
              -webkit-transform: scale(1.125);
              -ms-transform: scale(1.125);
              transform: scale(1.125);
              -moz-transition: -moz-transform 0.325s ease-in-out, -moz-filter 0.325s ease-in-out;
              -webkit-transition: -webkit-transform 0.325s ease-in-out, -webkit-filter 0.325s ease-in-out;
              -ms-transition: -ms-transform 0.325s ease-in-out, -ms-filter 0.325s ease-in-out;
              transition: transform 0.325s ease-in-out, filter 0.325s ease-in-out;
              background-image: url('https://project212.s3.ap-northeast-2.amazonaws.com/project/pic3+(1).png');
              background-position: center;
              background-size: cover;
              background-repeat: no-repeat;
              z-index: 1;
          }
   
          .login-failure {
               color: #D8000C;
               background-color: #FFD2D2;
               margin: 10px 0;
               padding: 10px;
               border-radius: 5px;
               border: 1px solid #D8000C;
            }
            
          #register {
                margin-bottom : 20px;
          }
          
          #user_name {
                margin-bottom : 20px;
          }
          #register-form{
                color: #ffffff;
          }
          #imgup{
                color: #ffffff;
          }
          #object{
                color: #ffffff;
          }
          
          #png {
              padding: 20px;
         }
         
         #userInfoForm button {
           /* 버튼 스타일 */
           background-color: #4CAF50; /* Green */
           border: none;
           color: white;
           padding: 15px 32px;
           text-align: center;
           text-decoration: none;
           display: inline-block;
           font-size: 16px;
           margin: 4px 2px;
           cursor: pointer;
         }
         
         #editInfoButton {
           font-size: 10px;
           padding: 5px 8px; 
           background-color: #000000;   
         }
         
         #newBirthday {
           color: black;
         }
         
         #editFields {
           padding: 20px;
         }
         
         .button-group {
             display: flex; /* Flexbox 적용 */
             justify-content: center; /* 버튼들을 가운데 정렬 */
             gap: 10px; /* 버튼들 사이의 간격 */
             align-items: center; /* 세로 방향 중앙 정렬 */
         }
         
         .similar-lesion-image {
             width: 350px; /* 원하는 너비로 조정 */
             height: auto; /* 높이를 자동으로 조정하여 비율 유지 */
             padding: 10px; /* 필요에 따라 패딩 추가 */
         }
         
         
         
         
         #mainUI{
            width: 1024px !important;
            height: 650px;
            padding: 25px !important;
         }
         #mainUIWrap{
            width: 28%;
            height : 600px;
            margin-left: 30px !important;;
            float : left;
         }
         
         #mainUI1{
            width: 100%;
            height: 200px;
            border: 1px solid white;
            border-radius: 20px;
            text-align: center;
            color: white;
         }
         
         #mainUI1 p {
            margin: 0; /* 기본 마진 제거 */
          padding: 10px 0; /* 상하 패딩 설정 */
          font-size: 1em; /* 글씨 크기 */
         }
         
         #mainUI1 h2 {
            font-size: 24px;
         }
         
         #mainUI2{
            margin-top : 20px !important;
            width: 100%;
            height: 400px;
            border: 1px solid white;
            border-radius: 20px;
         }
           
           #mainUI3 {
           width: 63%;
           height: 620px;
           float: left;
           margin-left: 30px !important;
           border: 1px solid white;
           border-radius: 20px;
           position: relative;
               }
   
           #mainUI3-1,
           #mainUI3-2,
           #mainUI3-3 {
               box-sizing: border-box; /* 크기에 패딩과 테두리를 포함하도록 설정 */
               
           }
   
           #mainUI3-1 {
               width: 306px;
               height: 410px;
               float: left;
   
           }
           #mainUI3-3 {
		    width: 612px;
		    height: 210px;
		    position: fixed;
		    overflow-y: scroll; /* 세로 스크롤 활성화 */ 
		    margin-top: 410px;
		   
		    font-family: 'intelone-mono-font-family-regular', sans-serif; /* 적용할 글꼴 추가 */
		}
		
	
		#mainUI3-3 h3 {
		    font-size:17px;
		}
           
   
           #mainUI3-2 {
               width: 306px;
               height: 410px;
               position: absolute;
               right: 0; /* 오른쪽 끝에 위치하도록 설정 */
           }
   
   
   
               
           #mainUI3::before {
               content: "";
               position: absolute;
               top: 410px; /* 가로선의 위치 조절 */
               left: 0;
               right: 0;
               border-top: 1px solid white; /* 가로선의 스타일 및 두께 설정 */
           }
   
           #mainUI3::after {
               content: "";
               position: absolute;
               top: 0;
               left: 306.5px; /* 세로선의 위치 조절 */
               height: 410px; /* 세로선의 최대 높이 설정 */
               border-left: 1px solid white; /* 세로선의 스타일 및 두께 설정 */
           }
   
           #mainUI3::before,
           #mainUI3::after {
               z-index: 1; /* ::before와 ::after를 앞으로 가져와 겹쳐지는 부분이 가리지 않도록 설정 */
           }
   
           #3-1img{
           padding-left: 150px;
           padding-top: 50px;
           }
           #3-2img{
           padding-left: 150px;
           padding-top: 50px;
   
           }
           
   
        .rounded-button {
               position: relative;
               z-index: 1; /* 버튼 위로 올리기 */
               margin: 5px; /* 마진을 5px로 조절 */
               display: block;
               margin-bottom: 10px; /* 버튼과 페이지네이션 간 여백 조절 */
           }
   
           .pagination {
               margin-top: 5px; /* 여백을 5px로 수정 */
               display: flex;
               justify-content: center;
               align-items: center;
           }
   
           .pagination a {
               margin: 0 5px;
               text-decoration: none;
               padding: 5px 10px;
               background-color: #eee;
               border: 1px solid #ccc;
               border-radius: 5px;
           }
   
           .pagination a.current {
               background-color: #007BFF;
               color: #fff;
           }
         
       .rounded-button {
           display: block; /* 전체 너비 사용 */
           margin: 2px auto 10px auto; /* 자동 마진으로 중앙 정렬 */
           background-color: transparent; /* 배경색 투명 */
           color: white; /* 글자 색상: 흰색 */
           padding: 10px 15px; /* 패딩 */
           font-size: 18px; /* 글자 크기 */
           cursor: pointer; /* 마우스 오버 시 커서 변경 */
           text-decoration: none; /* 텍스트 밑줄 제거 */
           text-align: center; /* 텍스트 중앙 정렬 */
           width: 90%; /* 너비 */
           box-sizing: border-box; /* 박스 사이즈 옵션 */
           border: 2px solid white; /* 흰색 테두리 */
           border-radius: 10px; /* 약간 둥근 모서리 */
   
       }
      
      .rounded-button:hover {
           background-color: #e2e2e2; /* 호버 시 배경 색상 변경 */
       }
           .arrow-button1 {
          
          margin-top:30px;
           font-size: 24px; /* 원하는 크기로 조절 */
           width: 80px; /* 원하는 가로 크기로 조절 */
           height: 60px; /* 원하는 세로 크기로 조절 */
           margin-left: 30px;
       }
        .arrow-button2 {
           margin-top:30px;
           font-size: 24px; /* 원하는 크기로 조절 */
           width: 80px; /* 원하는 가로 크기로 조절 */
           height: 60px; /* 원하는 세로 크기로 조절 */
           margin-left:80px;
           
   
       }
       .arrow-button3 {
           margin-top:30px;
           font-size: 24px; /* 원하는 크기로 조절 */
           width: 80px; /* 원하는 가로 크기로 조절 */
           height: 60px; /* 원하는 세로 크기로 조절 */
           margin-left: 30px;
    
       }
       .arrow-button4 {
           margin-top:30px;
           font-size: 24px; /* 원하는 크기로 조절 */
           width: 80px; /* 원하는 가로 크기로 조절 */
           height: 60px; /* 원하는 세로 크기로 조절 */
           margin-left: 80px;
           
           
           
        .post-list { 
               list-style-type: none;
               padding: 0;
               margin-top: 10px;
           }
   
        .post-list-item {
               margin-bottom: 5px;
           }
   
       }
       #pagination {
           list-style: none;
           display: inline-block;
           padding: 0;
           margin: 0; /* 리스트의 margin을 제거 */
       }
   
       #pagination li {
           display: inline-block;
           font-size: 16px;
           margin-right: 10px;
           padding: 10px;
           font-weight: 500;
           border: 1px solid #ddd;
           border-radius: 4px;
       }
   
       #pagination li:not(:last-child) {
           margin-right: 20px;
       }
       
   #uploadList {
       width: 271.11px;
       height: 260.4px;
   }
   
   .lesionCell {
       padding-top:10px;
       height: auto;
       min-height: 37.2px;
       box-sizing: border-box;
      color:white;
   }
   .dateCell{
      
       height: auto;
       min-height: 37.2px;
       box-sizing: border-box;
      color:white;
   }
   #loadingIndicator {
  /* 로딩 중 표시 스타일 설정 */
  display: none;
  color: #333;
  font-size: 16px;
  /* 추가적인 스타일링 필요 시 여기에 추가 */
}
    
         </style>
      <link rel="icon" href="https://project212.s3.ap-northeast-2.amazonaws.com/project/lungs+(1).ico" type="image/x-icon">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link href="https://project212.s3.ap-northeast-2.amazonaws.com/project/new.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
      <noscript><link href="https://project212.s3.ap-northeast-2.amazonaws.com/project/new.css" rel="stylesheet" type="text/css"></noscript>
   
      	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
   </head>
   <body class="is-preload">
  

      <!-- Wrapper -->
         <div id="wrapper">
            
            <!-- Header -->
               <header id="header">
               
               
                  <div class="logo">
                     <span class="fas fa-lungs" style="font-size: 30px;"></span>
                  </div>
                  <div class="content">
                     <div class="inner">
                        <a id="mainUILink" href="#" onclick="mainUI(); noticeBoard();"><h1 onclick="mainUI()" id="headerText">GOAT</h1></a>
                        <p>Portable X-ray for CNN-based Lesion Localization</p>
                     </div>
                  </div>
                  <nav>
                     <ul>
	                    <c:choose>
		                     <%-- 로그인 상태가 아닐 때 --%>
		                     <c:when test="${empty info}">
		                       <li id="login-status"><a href="#login">Login</a></li>
		                       <li><a href="#register">Register</a></li>
		                     </c:when>
		                     <%-- 로그인 상태일 때 --%>
		                     <c:otherwise>
		                       <li><a href="<c:url value='/logout'/>">Logout</a></li>
		                     </c:otherwise>
	                    </c:choose>
                   <!--<li><a href="#elements">Elements</a></li>-->
                     </ul>
                  </nav>
               </header>

            <!-- Main -->
               <div id="main">
                  
               <!-- Main UI/UX -->
                <article id="mainUI">
                   <div id="mainUIWrap">
                           <div id="mainUI1">
                              <!-- 유저 정보  -->
                              <!-- 이름, 성별, 나이 등 -->
                              <h2>Welcome!</h2>
                              <p id="userId">${user_id}</p>
							  <p id="fullName">${user_name}</p>
							  <p id="medicalCode" >${medical_number}</p>
                           </div>
                           <div id="mainUI2">
                           
						    <!-- 그동안 업로드 했던 목록들 (날짜별) -->
						    <table id="
Table" class="table" style="width: max-content; border-collapse: collapse;">
						        <thead>
						            <tr>
						                <th style="width: 133.73px;">날짜</th>
                						<th style="width: 137.39px;">병변</th>
						            </tr>
						        </thead>
						        <tbody id="uploadList">
						            <!-- 각 항목은 여기에 동적으로 추가될 것입니다. -->
						        </tbody>
						    </table>
						    <!-- 페이징 버튼 -->
						    <div style="text-align: center; margin-top: 5px; margin-left: 30px;">
						        <ul class="pageInfo" id="pagination">
						            <!-- Pagination will be dynamically added here using JavaScript -->
						        </ul>
						    </div>
						    
						    
						
						    <!-- Upload 버튼 -->
						    <a class="rounded-button" href="#upload"style="margin-bottom: 20px;" >Upload</a>
						</div>

                        </div>
                        <div id="mainUI3">
                           <div id="mainUI3-1">
                           <img style="width: 89%; height: 90%; transform-origin: top left; padding-left: 35px; padding-top: 30px; cursor: pointer;" id="3-1img" alt="" src="https://project212.s3.ap-northeast-2.amazonaws.com/%EC%99%BC%EC%AA%BD.png" onclick="handleImageClick(event);">
							
							
							
							
							
							<!-- 오른쪽 화살표 버튼 -->
						
							


                           </div>
                           
                           <div id="mainUI3-2">
                           <img style="width: 90%; height: 70%; transform-origin: top left; padding-left: 35px; padding-top: 30px; cursor: pointer;" id="3-2img" alt="" src="https://project212.s3.ap-northeast-2.amazonaws.com/%EC%A0%9C%EB%AA%A9+%EC%97%86%EC%9D%8C-1232.png" onclick="handleImageClick1(event);">
                           	
							<button onclick="loadPreviousImage1()" class="arrow-button3">
							    <i class="fas fa-arrow-left"></i>
							</button>
							
							<!-- 오른쪽 화살표 버튼 -->
							<button onclick="loadNextImage1()" class="arrow-button4">
							    <i class="fas fa-arrow-right"></i>
							</button>

                           </div>
                           
                                                      <div id="mainUI3-3">
                           <h3 id="leson" style="color: white;">병변이름</h2>
                           <h3 id="leson1" style="color: white;">특징</h3>
                           <h3 id="leson2" style="color: white;">증상</h3>
                           <h3 id="leson3" style="color: white;">구분방법</h3>
                           </div>
                           
                           
                           
                        
                        </div>
                     </article>
                     

                  <!-- Upload -->
                     <article id="upload">
					    <h2 class="major">Upload</h2>
					    <span class="image main"><img id="uploadedImage" src='https://project212.s3.ap-northeast-2.amazonaws.com/project/pic2.png'></span>
					    <input type="file" id="imageInput" style="display: none;" />
					    <button id="fileupload" onclick="openFileUpload()" style="display: block; background-color: transparent; color: white; padding: 7px 20px 26px 20px; margin: 8px 0; border: none; cursor: pointer; width: 100%;">browse files</button>
					
					    <div class="button-group">
					        <button id="uploadButton" style="display: none;" onclick="uploadWithLoading()">Upload</button>
					        <img id="loadingImage" src="https://project212.s3.ap-northeast-2.amazonaws.com/%EC%97%85%EB%A1%9C%EB%93%9C.gif" alt="로딩 이미지">
					    </div>
					
					    <p id="png"></p>
					    <div id="similarImages"></div>
					</article>

                  <!-- Login -->
                  <article id="nologin">
                        <h2 class="major" style="font-size: 20px;">로그인 후 사용해주세요</h2>


                            <div class="fields">
                               
                            </div>
                            
                       
                    </article>
                    
                    
                     <article id="login">
                        <h2 class="major">Login</h2>
                        <form method="post" action="<c:url value='/login'/>">
                            <div class="fields">
                               <div class="field half">
                                  <label for="userid">USER ID</label>
                                  <input style="color: white;" type="text" name="user_id" id="userid" placeholder="Enter User ID" required />
                               </div>
                               <div class="field half">
                                  <label for="password">PASSWORD</label>
                                  <input style="color: white;" type="password" name="user_password" id="user_password" placeholder="Enter Password" required />
                               </div>
                            </div>
                            <ul class="actions">
                               <li><input type="submit" value="LOGIN" class="primary" /></li>
                               <li><input type="reset" value="RESET" /></li>
                            </ul>
                         </form>
                    </article>
                    
                  <!-- Register -->
                     <article id="register">
                        <h2 class="major">Register</h2>
                        <form method="post" action='register' id="register-form">
                           <div class="fields">
                              <div class="field">
                                 <label for="user_id">User ID</label>
                                 <input type="text" name="user_id" id="user_id" placeholder="Enter User ID" />
                              </div>
                              <div class="field">
                                 <label for="user_password">Password</label>
                                 <input type="password" name="user_password" id="user_password" placeholder="Enter Password" />
                              </div>
                              <div class="field">
                                 <label for="confirm-password">Confirm Password</label>
                                 <input type="password" name="confirm-password" id="confirm-password" placeholder="Confirm Password" />
                              </div>
                              <div class="field">
                                 <label for="medical_number">Medical Number (5 digits)</label>
                                 <input type="text" name="medical_number" id="medical_number" min=00000 max=99999 placeholder="Enter 5-digit Medical Number" />
                              </div>
                              <div class="field">
                                 <label for="user_name">Full Name</label>
                                 <input type="text" name="user_name" id="user_name" placeholder="Enter Full Name" />
                              </div>
                           </div>
                           <ul class="actions">
                              <li><input type="submit" value="Register" class="primary" /></li>
                              <li><input type="reset" value="Reset" /></li>
                           </ul>
                        </form>
                        <ul class="icons">
                           <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                           <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                           <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                           <li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
                        </ul>
                     </article>

                     <script>
                     
                  
                     function upLoad(callback){
                      var formData = new FormData();
                      formData.append("image", $("#imageInput")[0].files[0]);

                      $.ajax({
                          url: "imageupload.do",
                          type: "POST",
                          data: formData,
                          contentType: false,
                          processData: false,
                          success: function (data) {
                              // 예측 결과를 이용하여 화면에 표시하거나 다른 작업 수행
                              console.log(data)
                              console.log(data.uploadedImageLink);
                              console.log(data.result);
                              console.log(data.overlay_image);
                              // #uploadedImage 요소의 src 속성을 업로드된 이미지의 URL로 변경
                              $('#uploadedImage').attr('src', 'data:image/png;base64,' + data.overlay_image);
                              
                              $('#imageInput').remove();
                              setTimeout(callback, 100);
                              // 결과를 표시
                             <!-- $('#upload').append('<p>' + data.result + '</p>');-->
                             <!-- $('#uploadButton').attr('id', 'next').attr('onclick', 'next').text('유사병변');-->
                              
                          },
                          error: function () {
                              // 오류 처리
                          }
                      });
                  }
                     
                        // 의료번호 입력 필드
                        const medicalNumberField = document.getElementById("medical-number");
                     
                        // 입력 값이 숫자인지 확인하는 함수
                        function isNumeric(value) {
                           return /^\d+$/.test(value);
                        }
                     
                        // 의료번호 필드의 입력 이벤트 처리
                        medicalNumberField.addEventListener("input", function () {
                           const inputValue = medicalNumberField.value;
                           if (!isNumeric(inputValue)) {
                              alert("의료번호는 숫자로만 입력해야 합니다.");
                              medicalNumberField.value = "";
                           }
                        });
                        function uploadWithLoading() {
                            // 로딩 이미지 표시
                            $('#loadingImage').show();

                            // AJAX 통신
                            upLoad(function() {
                                // AJAX 통신이 완료된 후에 실행되는 콜백
                                // 다른 작업 수행
                                closebutten();

                                // 로딩 이미지 숨기기
                                setTimeout(function() {
                                    $('#loadingImage').hide();
                                }, 0); // 다음 이벤트 루프에서 실행되도록 예약
                            });
                        }
                        function imageupload() {
                           var form = document.getElementById('register-form');
                           var formData = new FormData(form);
                           var xhr = new XMLHttpRequest();
                           xhr.open('POST', 'upload', true);
                           xhr.onload = function () {
                              if (xhr.status === 200 || xhr.status === 201) {
                                 console.log(xhr.responseText);
                              } else {
                                 console.error(xhr.responseText);
                              }
                           };
                           xhr.send(formData);
                        }
                     </script>


                  <!-- Elements -->
                  <article id="elements">
                     <h2 class="major">Elements</h2>

                     <section>
                        <h3 class="major">Text</h3>
                        <p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
                        This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
                        This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>. Finally, <a href="#">this is a link</a>.</p>
                        <hr />
                        <h2>Heading Level 2</h2>
                        <h3>Heading Level 3</h3>
                        <h4>Heading Level 4</h4>
                        <h5>Heading Level 5</h5>
                        <h6>Heading Level 6</h6>
                        <hr />
                        <h4>Blockquote</h4>
                        <blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum dolor sit amet nullam adipiscing eu felis.</blockquote>
                        <h4>Preformatted</h4>
                        <pre><code>i = 0;

while (!deck.isInOrder()) {
 print 'Iteration ' + i;
 deck.shuffle();
 i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
                     </section>

                     <section>
                        <h3 class="major">Lists</h3>

                        <h4>Unordered</h4>
                        <ul>
                           <li>Dolor pulvinar etiam.</li>
                           <li>Sagittis adipiscing.</li>
                           <li>Felis enim feugiat.</li>
                        </ul>

                        <h4>Alternate</h4>
                        <ul class="alt">
                           <li>Dolor pulvinar etiam.</li>
                           <li>Sagittis adipiscing.</li>
                           <li>Felis enim feugiat.</li>
                        </ul>

                        <h4>Ordered</h4>
                        <ol>
                           <li>Dolor pulvinar etiam.</li>
                           <li>Etiam vel felis viverra.</li>
                           <li>Felis enim feugiat.</li>
                           <li>Dolor pulvinar etiam.</li>
                           <li>Etiam vel felis lorem.</li>
                           <li>Felis enim et feugiat.</li>
                        </ol>
                        <h4>Icons</h4>
                        <ul class="icons">
                           <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                           <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                           <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                           <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
                        </ul>

                        <h4>Actions</h4>
                        <ul class="actions">
                           <li><a href="#" class="button primary">Default</a></li>
                           <li><a href="#" class="button">Default</a></li>
                        </ul>
                        <ul class="actions stacked">
                           <li><a href="#" class="button primary">Default</a></li>
                           <li><a href="#" class="button">Default</a></li>
                        </ul>
                     </section>

                     <section>
                        <h3 class="major">Table</h3>
                        <h4>Default</h4>
                        <div class="table">
                           <table>
                              <thead>
                                 <tr>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Price</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>Item One</td>
                                    <td>Ante turpis integer aliquet porttitor.</td>
                                    <td>29.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Two</td>
                                    <td>Vis ac commodo adipiscing arcu aliquet.</td>
                                    <td>19.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Three</td>
                                    <td> Morbi faucibus arcu accumsan lorem.</td>
                                    <td>29.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Four</td>
                                    <td>Vitae integer tempus condimentum.</td>
                                    <td>19.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Five</td>
                                    <td>Ante turpis integer aliquet porttitor.</td>
                                    <td>29.99</td>
                                 </tr>
                              </tbody>
                              <tfoot>
                                 <tr>
                                    <td colspan="2"></td>
                                    <td>100.00</td>
                                 </tr>
                              </tfoot>
                           </table>
                        </div>

                        <h4>Alternate</h4>
                        <div class="table-wrapper">
                           <table class="alt">
                              <thead>
                                 <tr>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Price</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>Item One</td>
                                    <td>Ante turpis integer aliquet porttitor.</td>
                                    <td>29.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Two</td>
                                    <td>Vis ac commodo adipiscing arcu aliquet.</td>
                                    <td>19.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Three</td>
                                    <td> Morbi faucibus arcu accumsan lorem.</td>
                                    <td>29.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Four</td>
                                    <td>Vitae integer tempus condimentum.</td>
                                    <td>19.99</td>
                                 </tr>
                                 <tr>
                                    <td>Item Five</td>
                                    <td>Ante turpis integer aliquet porttitor.</td>
                                    <td>29.99</td>
                                 </tr>
                              </tbody>
                              <tfoot>
                                 <tr>
                                    <td colspan="2"></td>
                                    <td>100.00</td>
                                 </tr>
                              </tfoot>
                           </table>
                        </div>
                     </section>

                     <section>
                        <h3 class="major">Buttons</h3>
                        <ul class="actions">
                           <li><a href="#" class="button primary">Primary</a></li>
                           <li><a href="#" class="button">Default</a></li>
                        </ul>
                        <ul class="actions">
                           <li><a href="#" class="button">Default</a></li>
                           <li><a href="#" class="button small">Small</a></li>
                        </ul>
                        <ul class="actions">
                           <li><a href="#" class="button primary icon solid fa-download">Icon</a></li>
                           <li><a href="#" class="button icon solid fa-download">Icon</a></li>
                        </ul>
                        <ul class="actions">
                           <li><span class="button primary disabled">Disabled</span></li>
                           <li><span class="button disabled">Disabled</span></li>
                        </ul>
                     </section>

                     <section>
                        <h3 class="major">Form</h3>
                        <form method="post" action="#">
                           <div class="fields">
                              <div class="field half">
                                 <label for="demo-name">Name</label>
                                 <input type="text" name="demo-name" id="demo-name" value="" placeholder="Jane Doe" />
                              </div>
                              <div class="field half">
                                 <label for="demo-email">Email</label>
                                 <input type="email" name="demo-email" id="demo-email" value="" placeholder="jane@untitled.tld" />
                              </div>
                              <div class="field">
                                 <label for="demo-category">Category</label>
                                 <select name="demo-category" id="demo-category">
                                    <option value="">-</option>
                                    <option value="1">Manufacturing</option>
                                    <option value="1">Shipping</option>
                                    <option value="1">Administration</option>
                                    <option value="1">Human Resources</option>
                                 </select>
                              </div>
                              <div class="field half">
                                 <input type="radio" id="demo-priority-low" name="demo-priority" checked>
                                 <label for="demo-priority-low">Low</label>
                              </div>
                              <div class="field half">
                                 <input type="radio" id="demo-priority-high" name="demo-priority">
                                 <label for="demo-priority-high">High</label>
                              </div>
                              <div class="field half">
                                 <input type="checkbox" id="demo-copy" name="demo-copy">
                                 <label for="demo-copy">Email me a copy</label>
                              </div>
                              <div class="field half">
                                 <input type="checkbox" id="demo-human" name="demo-human" checked>
                                 <label for="demo-human">Not a robot</label>
                              </div>
                              <div class="field">
                                 <label for="demo-message">Message</label>
                                 <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                              </div>
                           </div>
                           <ul class="actions">
                              <li><input type="submit" value="Send Message" class="primary" /></li>
                              <li><input type="reset" value="Reset" /></li>
                           </ul>
                        </form>
                     </section>

                  </article>

            </div>

         <!-- Footer -->
            <footer id="footer">
               <p class="copyright">&copy; Together: <a href='https://html5up.net'/>">GOAT</a>.</p>
            </footer>

      </div>






   <!-- BG -->
      <div id="bg"></div>



<!-- 로그인 성공 실패 관련 모달창 (팝업) -->
<!-- Modal -->
<div class="modal fade" id="myModala" role="dialog">
 <div class="modal-dialog">
 
   <!-- Modal content-->
   <div class="modal-content">
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal">&times;</button>
       <h4 class="modal-title">${mTitle}</h4>
     </div>
     <div class="modal-body">
       <p>${mMsg}</p>
     </div>
     <div class="modal-footer">
       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
     </div>
   </div>
   
 <!-- 모달 영역 -->



 <script type="text/javascript">
   $(document).ready(function() {
       if(${not empty mTitle}){
          $("#myModala").modal("show");
       }
   });
   
     
   function openFileUpload() {
         document.getElementById('imageInput').click();
         document.getElementById('imageInput').addEventListener('change', function() {
      if (this.files.length) {
       // 기존 메시지 제거
        $('#png').empty();
       
       // 새 메시지 표시
        $('#png').append('<p style="color: white;">이미지가 선택되었습니다.</p>');
        $("#uploadButton").css("display", "block");
        $("#fileupload").css("display", "none");
        showSelectedImage(this.files[0]);
            }
         });
     };
     function showSelectedImage(file) {
    	    var reader = new FileReader();
    	    reader.onload = function(e) {
    	        document.getElementById('uploadedImage').src = e.target.result;
    	    };
    	    reader.readAsDataURL(file);
    	}
     
     function closebutten(){
         document.getElementById('fileupload').style.display = "none";
     }
     
     function toggleEditFields() {
          var editFields = document.getElementById("editFields");
          if (editFields.style.display === "none" || editFields.style.display === "") {
            editFields.style.display = "block";
          } else {
            editFields.style.display = "none";
          }
        }
     
     document.getElementById('imageInput').addEventListener('change', function() {
         toggleButtons(this.files.length > 0); // 파일이 선택되면 버튼을 보이게 하고, 선택되지 않으면 숨깁니다.
     });

     function toggleButtons(show) {
         var restartButton = document.getElementById('back');
         var similarButton = document.getElementById('similarButton');
         var display = show ? "block" : "none"; // 파일이 선택되었으면 'block', 그렇지 않으면 'none'
         restartButton.style.display = display;
         similarButton.style.display = display;
     }
     
     function restartUpload() {
         // 'Input File' 버튼을 다시 보이게 하고 클릭 가능하게 함
         var fileUploadButton = document.getElementById('fileupload');
         if (fileUploadButton) {
             fileUploadButton.style.display = 'block'; // 버튼을 보이게 함
             fileUploadButton.disabled = false; // 버튼을 클릭 가능하게 함
             document.getElementById("similarImages").style.display = "none";
         } else {
             console.error('fileUploadButton element not found');
         }

         // 이미지 입력 필드 초기화 및 활성화
         var imageInput = document.getElementById('imageInput');
         if (imageInput) {
             imageInput.value = '';
             imageInput.disabled = false; // 입력 필드를 활성화
         } else {
             console.error('imageInput element not found');
         }

         // 이미지 미리보기를 기본 이미지로 리셋
         var uploadedImage = document.getElementById('uploadedImage');
         if (uploadedImage) {
             uploadedImage.src = 'https://project212.s3.ap-northeast-2.amazonaws.com/project/pic2.png'; // 기본 이미지 경로로 변경
         } else {
             console.error('uploadedImage element not found');
         }

         // 'Upload', 'Restart', 'Similar' 버튼 상태 재설정
         var uploadButton = document.getElementById('uploadButton');
         var restartButton = document.getElementById('back');
         var similarButton = document.getElementById('similarButton');
         if (uploadButton && restartButton && similarButton) {
             uploadButton.style.display = 'block'; // 'Upload' 버튼을 보이게 함
             uploadButton.disabled = false; // 'Upload' 버튼을 활성화
             restartButton.style.display = 'none'; // 'Restart' 버튼을 숨김
             similarButton.style.display = 'none'; // 'Similar' 버튼을 숨김
         } else {
             console.error('One or more button elements not found');
         }

         // 메시지 영역을 비움
         $('#png').empty();

         // 사용자를 업로드 섹션으로 스크롤
         window.scrollTo(0, 0);
     }
     
     function displaySimilarLesions() {
         // 임의의 사진 URL (이 부분은 실제 URL로 대체해야 함)
      var lesionPhoto1 = "https://project212.s3.ap-northeast-2.amazonaws.com/00005535_000.png";
      var lesionPhoto2 = "https://project212.s3.ap-northeast-2.amazonaws.com/00005536_002.png";
      var lesionPhoto3 = "https://project212.s3.ap-northeast-2.amazonaws.com/00005536_004.png";

         // 사진을 표시할 HTML 요소 생성 및 설정
         var imagesHtml = '<img src="' + lesionPhoto1 + '" alt="Lesion Photo 1" class="similar-lesion-image"/>';
       imagesHtml += '<img src="' + lesionPhoto2 + '" alt="Lesion Photo 2" class="similar-lesion-image"/>';
       imagesHtml += '<img src="' + lesionPhoto3 + '" alt="Lesion Photo 3" class="similar-lesion-image"/>';


         // 해당 사진들을 화면에 표시 (예: #similarImages라는 ID를 가진 div에 사진들을 추가)
         document.getElementById("similarImages").innerHTML = imagesHtml;
         
         document.getElementById("similarButton").setAttribute("onclick", "closr()");
         
     }
     
     function closr() {
         // similarButton ID를 가진 버튼의 onclick 속성을 open 함수로 변경
         document.getElementById("similarButton").onclick = open;

         // similarImages ID를 가진 요소를 숨김
         document.getElementById("similarImages").style.display = "none";
     }

     function open() {
         // similarButton ID를 가진 버튼의 onclick 속성을 closr 함수로 변경
         document.getElementById("similarButton").onclick = closr;

         // similarImages ID를 가진 요소를 보임
         document.getElementById("similarImages").style.display = "block";
     }
     var mainUI3_3 = document.getElementById('mainUI3-3');
     if (mainUI3_3.scrollHeight > mainUI3_3.clientHeight) {
         mainUI3_3.style.overflowY = 'scroll';
     }

     
     
     
     
     
     $(document).ready(function() {
         updateHeaderText();
     });

     function updateHeaderText() {
         // 로그인 상태를 확인하여 헤더 텍스트를 업데이트
         var isLoggedIn = ${not empty sessionScope.info}; // 로그인 상태 확인
         if (isLoggedIn) {
             $("#headerText").text("START"); // 로그인 상태일 때
         } else {
             $("#headerText").text("GOAT"); // 로그인 상태가 아닐 때
         }
     }
     
     $(document).ready(function() {
         updateMainUILink();
     });

     function updateMainUILink() {
         var isLoggedIn = ${not empty sessionScope.info}; // 로그인 상태 확인
         var mainUILink = document.getElementById("mainUILink");
         
         
         if (isLoggedIn) {
             // 로그인 상태일 때, 링크 활성화
            $("#mainUILink").attr("href", "#mainUI");
             mainUILink.addEventListener("click", mainUI);
             mainUILink.addEventListener("click", noticeBoard);
         } else {
             // 로그인 상태가 아닐 때, 링크 비활성화 및 클릭 이벤트 방지
             $("#mainUILink").removeAttr("href").click(function(event) {
                mainUILink.removeAttribute("onclick");
                 mainUILink.removeEventListener("click", mainUI);
                 mainUILink.removeEventListener("click", noticeBoard);
                 event.preventDefault();
             });
         }
     }
        
         var itemsPerPage = 7;
        var currentPage = 1;
        var testData; // Declare testData as a global variable to store the fetched data

        function mainUI() {
            $.ajax({
            	
                url: "mainUI",
                type: "POST",
                dataType: "json",
                success: function (data) {
                    var user_id = data.user_id;
                    var user_name = data.user_name;
                    var medical_number = data.medical_number;

                    $("#userId").text("USER ID : " + user_id);
                    $("#fullName").text("NAME : " + user_name);
                    $("#medicalCode").text("MEDICAL NUMBER : " + medical_number);
                    
                    // 추가 정보 가져오기
                     $.ajax({
                        url: "additionalInfo",
                        type: "POST",
                        dataType: "json",
                        data: { user_id: user_id },
                        success: function (additionalData) {
                            testData = additionalData.uploadHistory;  // Update testData
                            console.log(testData)
                            
                            
                           

                            renderTable();  // 테이블 초기화
                            renderPagination();
                        },
                        error: function () {
                            // 오류 처리
                        
                    }});
                },
                error: function () {
                    // 오류 처리
                }
            });
        }
        function renderTable() {
    var uploadList = $("#uploadList");
    uploadList.empty(); // 기존 목록 삭제

    var startIndex = (currentPage - 1) * itemsPerPage;
    var endIndex = startIndex + itemsPerPage;

    for (var i = startIndex; i < endIndex && i < testData.length; i++) {
    	
        const item = testData[i];

        // 새로운 행 생성
        var row = document.createElement("tr");

        // 날짜 셀 생성
        var dateCell = document.createElement("td");
        dateCell.classList.add("dateCell"); // 클래스 추가
        dateCell.textContent = item.photo_date;
        row.appendChild(dateCell);

        // 병변 셀 생성
        var lesionCell = document.createElement("td");
        lesionCell.classList.add("lesionCell"); // 클래스 추가

        // 병변 셀을 클릭할 때 이미지 주소만 가져와서 변경
        var link = document.createElement("a");
        link.href = "javascript:void(0);"; // 링크 이동 방지
        link.textContent = item.lesion_name;

        // 클릭 이벤트 추가
        link.addEventListener('click', function() {
            // 클릭 시 이미지 주소만 가져와서 변경
            $('#3-1img').attr('src', 'data:image/png;base64,' + item.encodedImage1);
            //$('#3-1img').attr('src', item.photo_link);
            
            // AJAX 요청
            $.ajax({
                url: 'LesionDescription',
                type: 'POST',
                data: { lesion_name: item.lesion_name },
                success: function (response) { 
                    
                    var explanation = response.explanations;
                    var explanation1 = explanation.split(',');
                    $('#leson').text(explanation1[0]);
                    $('#leson1').text(explanation1[1]);
                    $('#leson2').text(explanation1[2]);
                    $('#leson3').text(explanation1[3]);
                 
                    <!--updateLesionExplanation(explanation);-->

                    // 이미지 변경 (처음 클릭 시에만 실행)
                    
                        var imagePaths = response.imagePaths;
                        var imagePaths1 = imagePaths.split(','); // 쉼표로 구분된 문자열을 배열로 분리
                        imageList = imageList.concat(imagePaths1);
                        console.log(imagePaths1);

                        // imagePathArray를 적절히 활용하여 이미지 변경 등의 작업 수행
                        $('#3-2img').attr('src', imagePaths1[0]); // 첫 번째 사진으로 변경

                        
                   
                },
            });

        });

        lesionCell.appendChild(link);
        row.appendChild(lesionCell);

        // 행을 테이블에 추가
        uploadList.append(row);



                // 가로 세로 길이 직접 지정
               <!--$('.dateCell').css('width', '133.73px'); // 날짜 셀 가로 길이
                $('.dateCell').css('height', '37.2px'); // 날짜 셀 세로 길이
                $('.lesionCell').css('width', '137.39px'); // 병변 셀 가로 길이
                $('.lesionCell').css('height', '37.2px'); // 병변 셀 세로 길이
                $('.dateCell').css('color', 'white'); // 날짜 셀 폰트 컬러
                $('.lesionCell').css('color', 'white'); // 병변 셀 폰트 컬러
                $('.dateCell').css('min-height', '37.2px'); // 날짜 셀 최소 높이 설정
                $('.lesionCell').css('min-height', '37.2px'); // 병변 셀 최소 높이 설정 
               -->
        }
    }
   var imageList = [];
    function renderPagination() {
            var totalPages = Math.ceil(testData.length / itemsPerPage);
            var pagination = $("#pagination");
            pagination.empty(); // 기존 페이지네이션 삭제

            var maxPageLinks = 6; // 한 페이지에 보여질 최대 페이지 링크 수
            var startPage = Math.max(1, currentPage - Math.floor(maxPageLinks / 2));
            var endPage = Math.min(totalPages, startPage + maxPageLinks - 1);

            for (var i = startPage; i <= endPage; i++) {
                var pageLink = document.createElement("a");
                pageLink.href = "#";
                pageLink.textContent = i;

                if (i === currentPage) {
                    pageLink.classList.add("current");
                }

                pageLink.addEventListener("click", function (event) {
                    event.preventDefault();
                    currentPage = parseInt(event.target.textContent);
                    renderTable();
                    renderPagination();
                });

                pagination.append(pageLink);
            }
        }
        
        function handleImageClick1(event) {
        	const x = event.clientX - event.target.getBoundingClientRect().left;
            const y = event.clientY - event.target.getBoundingClientRect().top;

            // 이미지의 가로 중점 계산
            const imageWidth = event.target.width * 1.1;
            const imageCenterX = event.target.getBoundingClientRect().left + imageWidth / 2;

            // 왼쪽과 오른쪽 영역을 나누는 지점
            const splitPoint = imageCenterX - event.target.getBoundingClientRect().left;

            // 왼쪽 영역 클릭 처리
            if (x < splitPoint) {
                
                handleLeftClick2();
            }
            // 오른쪽 영역 클릭 처리
            else {
                
                handleRightClick2();
            }
            
            function handleLeftClick2() {
                // 왼쪽 영역 클릭 시 수행할 동작
                console.log("두 번째 이미지 - 왼쪽 영역 클릭");
                loadPreviousImage1()
                // 추가로 원하는 동작을 여기에 추가
        		}

	       function handleRightClick2() {
	                // 오른쪽 영역 클릭 시 수행할 동작
	                console.log("두 번째 이미지 - 오른쪽 영역 클릭");
	                loadNextImage1()
	                // 추가로 원하는 동작을 여기에 추가
	        		}
        }
        
        function handleImageClick(event) {
        	const x = event.clientX - event.target.getBoundingClientRect().left;
            const y = event.clientY - event.target.getBoundingClientRect().top;

            // 이미지의 가로 중점 계산
            const imageWidth = event.target.width * 1.1;
            const imageCenterX = event.target.getBoundingClientRect().left + imageWidth / 2;

            // 왼쪽과 오른쪽 영역을 나누는 지점
            const splitPoint = imageCenterX - event.target.getBoundingClientRect().left;

            // 왼쪽 영역 클릭 처리
            if (x < splitPoint) {
                handleLeftClick();
            }
            // 오른쪽 영역 클릭 처리
            else {
                handleRightClick();
            }
            
            function handleLeftClick() {
                // 왼쪽 영역 클릭 시 수행할 동작
                console.log("첫 번째 이미지 - 왼쪽 영역 클릭");
                // 추가로 원하는 동작을 여기에 추가
            }

            function handleRightClick() {
                // 오른쪽 영역 클릭 시 수행할 동작
                console.log("첫 번째 이미지 - 오른쪽 영역 클릭");
                // 추가로 원하는 동작을 여기에 추가
            }
            
       
            
        }
        var imageList = [];
        var imagePaths1 = [];
        function handleLeftClick1(imagePaths1) {
            // 이미지 변경 (이전 사진으로 변경)
            currentImageIndex = (currentImageIndex - 1 + imagePaths1.length) % imagePaths1.length;
            $('#3-2img').attr('src', imagePaths1[currentImageIndex]);
            console.log("이전 이미지 - 왼쪽 영역 클릭");

            // 만약 첫 번째 사진이라면 마지막 사진으로 돌아가기
            if (currentImageIndex === 0) {
                currentImageIndex = imagePaths1.length - 1;
            }
        }

        var currentImageIndex = 0; // 현재 보여지고 있는 이미지의 인덱스

         function handleRightClick1(imagePaths1) {
            // 이미지 변경 (다음 사진으로 변경)
            currentImageIndex = (currentImageIndex + 1) % imagePaths1.length;
            $('#3-2img').attr('src', imagePaths1[currentImageIndex]);
            console.log("다음 이미지 - 오른쪽 영역 클릭");

            // 만약 마지막 사진이라면 첫 번째 사진으로 돌아가기
            if (currentImageIndex === imagePaths1.length - 1) {
                currentImageIndex = 0;
            }
        }
        function noticeBoard() {
        	
        	
      }
        var currentIndex = 0;

        

        // 초기 페이지 로딩 시 이미지 표시
        displayImage();

        function displayImage() {
            var imageUrl = imageList[currentIndex];
            $("#3-2img").attr("src", imageUrl);
        }

        function loadPreviousImage1() {
            currentIndex = (currentIndex - 1 + imageList.length) % imageList.length;
            displayImage();
        }

        function loadNextImage1() {
            currentIndex = (currentIndex + 1) % imageList.length;
            displayImage();
        }

        // Ajax를 사용하여 서버에서 이미지 목록을 가져오는 함수
        
        
   </script>







      <!-- Scripts -->
         <!--  <script src="https://project212.s3.ap-northeast-2.amazonaws.com/project/js/jquery.min.js"></script>  -->
         <script src="https://project212.s3.ap-northeast-2.amazonaws.com/project/js/browser.min.js"></script>
         <script src="https://project212.s3.ap-northeast-2.amazonaws.com/project/js/breakpoints.min.js"></script>
         <script src="https://project212.s3.ap-northeast-2.amazonaws.com/project/js/util.js"></script>
         <script src="https://project212.s3.ap-northeast-2.amazonaws.com/project/js/main.js"></script>
         
         
         
         


   </body>
</html>