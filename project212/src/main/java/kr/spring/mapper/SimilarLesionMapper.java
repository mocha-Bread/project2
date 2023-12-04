package kr.spring.mapper;

import org.apache.ibatis.annotations.Param;

import kr.spring.entity.SimilarLesion;

public interface SimilarLesionMapper {
    SimilarLesion getSimilarLesionByLesionName(@Param("lesion_name") String lesion_name);
}
