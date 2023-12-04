package kr.spring.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PredictionResponse {
    private double probability;
    private String image;
    private String overlay_image;
    private String processed_activation_map;
    private byte[] encodedImage1;
	private String lesion_name;
    
		


    // getters and setters
}
