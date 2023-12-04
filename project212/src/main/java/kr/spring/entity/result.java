package kr.spring.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class result {
    private String lesion_code;
    private String lesion_name;
    private String user_id;
    private byte[] encodedImage1;
    private String photo_link;
}