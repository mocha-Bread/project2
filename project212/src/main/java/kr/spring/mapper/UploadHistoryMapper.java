package kr.spring.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import kr.spring.entity.UploadHistory;

@Mapper
public interface UploadHistoryMapper {
	List<UploadHistory> findAllLesionNamesAndPhotoNumbers(String userID);

}
	

