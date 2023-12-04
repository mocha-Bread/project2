package kr.spring.entity;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.mapper.SimilarLesionMapper;

@Service
public class SimilarLesionService {
    private final SimilarLesionMapper similarLesionMapper;

    @Autowired
    public SimilarLesionService(SimilarLesionMapper similarLesionMapper) {
        this.similarLesionMapper = similarLesionMapper;
    }

    public SimilarLesion getSimilarLesionByLesionName(@Param("lesion_name")String lesion_name) {
        return similarLesionMapper.getSimilarLesionByLesionName(lesion_name);
    }
}

