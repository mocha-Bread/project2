package kr.spring.controller;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class S3Config {
    @Bean
    public AmazonS3 s3client() {
        BasicAWSCredentials awsCreds = new BasicAWSCredentials("", "");
        AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
                            .withRegion("ap-northeast-2")
                            .withCredentials(new AWSStaticCredentialsProvider(awsCreds))
                            .build();

        return s3Client;
    }
}
