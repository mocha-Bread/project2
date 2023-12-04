package kr.spring.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UploadHistory {
	
	private byte[] encodedImage1;
	private String lesion_name;
	private String user_id;
	private String photo_date;
	
	
	
	}

