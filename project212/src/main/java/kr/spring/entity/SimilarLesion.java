package kr.spring.entity;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SimilarLesion {
    private String lesion_code;
    private String lesion_name;

    private String lesion_photos;


    private String explanation;

    // 생성자, 게터, 세터 등 필요한 메서드들

    // ...
}
