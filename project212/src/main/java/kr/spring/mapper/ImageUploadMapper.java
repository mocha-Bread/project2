package kr.spring.mapper;


import org.apache.ibatis.annotations.Mapper;

import kr.spring.entity.Image;
import kr.spring.entity.result;

@Mapper
public interface ImageUploadMapper {
    public void uploadImage(Image image2);

	public void resultUpload(result image3);

	
}
	

