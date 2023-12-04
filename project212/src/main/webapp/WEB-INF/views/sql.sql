use goat_41;
-- 결과 테이블
CREATE TABLE result(
    photo_number INT UNIQUE NOT NULL AUTO_INCREMENT COMMENT '사진번호',
    photo_link VARCHAR(2000) NOT NULL COMMENT '사진링크',
    lesion_code VARCHAR(10) NOT NULL COMMENT '병변코드',
    user_id VARCHAR(30) NOT NULL COMMENT '회원아이디',
    photo_date DATE NOT NULL COMMENT '사진날짜',
    lesion_name VARCHAR(50) NOT NULL COMMENT '병변이름',
    PRIMARY KEY(photo_number)
);

ALTER TABLE result COMMENT '결과';

-- Forign Key 설정 (result == similar_lesion)
ALTER TABLE result
   ADD CONSTRAINT FK_result_lesion_code FOREIGN KEY (lesion_code)
      REFERENCES similar_lesion (lesion_code) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Forign Key 설정 (result == tb_user)
ALTER TABLE result
   ADD CONSTRAINT FK_result_user_id FOREIGN KEY (user_id)
      REFERENCES tb_user (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Forign Key 삭제 (result == similar_lesion)
ALTER TABLE result
DROP FOREIGN KEY FK_result_lesion_code;


-- Forign Key 삭제 (result == tb_user)
ALTER TABLE result
DROP FOREIGN KEY FK_result_user_id;
-- 회원 테이블
CREATE TABLE tb_user (
   user_id VARCHAR(30) NOT NULL,
    user_password VARCHAR(30) NOT NULL,
    medical_number INT(5) NOT NULL,
    user_name VARCHAR(30) NOT NULL,
    PRIMARY KEY(user_id)
);

ALTER TABLE tb_user COMMENT '회원';

-- 회원정보 추가하기
INSERT INTO tb_user VALUES ('leesinyoung', 'goatlee@1234', '12345', '이신영');

select * from photo;
select * from result;
DELETE FROM similar_lesion WHERE lesion_name = 'No Finding';

select * from tb_user;

drop table result;

-- 사진 업로드 테이블
CREATE TABLE photo(
    photo_number INT NOT NULL AUTO_INCREMENT,
    photo_date DATE NOT NULL,
    photo_link VARCHAR(2000) NOT NULL,
    user_id VARCHAR(30) NOT NULL,
    PRIMARY KEY(photo_number)
);

ALTER TABLE photo COMMENT '사진업로드';

-- Forign Key 설정 (photo == tb_user)
ALTER TABLE photo
   ADD CONSTRAINT FK_photo_user_id FOREIGN KEY (user_id)
      REFERENCES tb_user (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Forign Key 삭제
ALTER TABLE photo
DROP FOREIGN KEY FK_photo_user_id;

-- 결과 테이블
CREATE TABLE result(
    photo_number INT NOT NULL AUTO_INCREMENT,
    photo_link VARCHAR(2000) NOT NULL,
    lesion_code VARCHAR(30) NOT NULL,
    lesion_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(photo_number)
);

DELETE FROM result
WHERE lesion_name = 'cardiomegaly';
ALTER TABLE result ADD COLUMN photo_date DATE;
ALTER TABLE result ADD COLUMN encodedImage1 BLOB;
ALTER TABLE result ADD COLUMN user_id INT;
ALTER TABLE result MODIFY user_id VARCHAR(255);
drop table result;
select * from result;
ALTER TABLE result COMMENT '결과';

-- Forign Key 설정 (result == photo)
ALTER TABLE result
   ADD CONSTRAINT FK_result_photo_number FOREIGN KEY (photo_number)
      REFERENCES photo (photo_number) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Forign Key 삭제
ALTER TABLE result
DROP FOREIGN KEY FK_result_photo_number;

select * from similar_lesion;
drop table similar_lesion;
-- 유사병변 테이블
CREATE TABLE similar_lesion(
    lesion_code VARCHAR(30) NOT NULL,
    lesion_name VARCHAR(50) NOT NULL,
    lesion_photos VARCHAR(4500) NOT NULL,
    explanation VARCHAR(10400) NOT NULL,
    PRIMARY KEY(lesion_code)
);
INSERT INTO similar_lesion (lesion_code, lesion_name, lesion_photo1, lesion_photo2, lesion_photo3, lesion_photo4, lesion_photo5, lesion_photo6, lesion_photo7, lesion_photo8, lesion_photo9, lesion_photo10, explanation1,explanation2,explanation3,explanation4,explanation5,explanation6,explanation7,explanation8,explanation9,explanation10)
VALUES ('003', '나', 'https://s3.example.com/photo1.png', 'https://s3.example.com/photo2.png', 'https://s3.example.com/photo3.png', 'https://s3.example.com/photo4.png', 'https://s3.example.com/photo5.png', 'https://s3.example.com/photo6.png', 'https://s3.example.com/photo7.png', 'https://s3.example.com/photo8.png', 'https://s3.example.com/photo9.png', 'https://s3.example.com/photo10.png', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.', 'This is an explanation for Atelectasis.');

INSERT INTO similar_lesion (
    lesion_code, lesion_name, 
    lesion_photos, 
    explanation
) VALUES (
    '008', '나', 
    'https://project212.s3.ap-northeast-2.amazonaws.com/1701164925100-00000005_004.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701148808910-00000013_022.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701142159959-00000027_000.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077849075-00000013_014.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077633589-00000003_004.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077598558-00000013_033.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077533796-00000003_003.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077499670-00000005_003.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701071187074-00000118_007.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701070010946-00000147_001.png',
    '병변 없음');

INSERT INTO similar_lesion (
    lesion_code, lesion_name, 
    lesion_photos, 
    explanation
) VALUES (
    '005', 'No Finding','https://project212.s3.ap-northeast-2.amazonaws.com/1701164925100-00000005_004.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701148808910-00000013_022.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701142159959-00000027_000.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077849075-00000013_014.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077633589-00000003_004.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077598558-00000013_033.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077533796-00000003_003.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077499670-00000005_003.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701071187074-00000118_007.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701070010946-00000147_001.png', '폐 폐색: 폐의 일부 또는 전체가 폐색되면 atelectasis가 발생할 수 있습니다. 이는 기도와 폐 사이의 공기 흐름이 차단되거나 감소하는 상황에서 발생합니다.,Lung Obstruction: Atelectasis can occur if a part or all of the lung is obstructed. This happens in situations where the air flow between the airway and the lung is blocked or reduced.,폐 부풀기 부족: 폐 부풀기 부족은 atelectasis의 다른 주요 원인입니다. 폐의 일부 또는 전체가 부풀지 못하면 폐 조직이 축소되거나 붕괴될 수 있습니다.,Insufficient Lung Inflation: Insufficient lung inflation is another major cause of atelectasis. If a part or all of the lung fails to inflate lung tissue can shrink or collapse.,기타 요인: 기타 요인으로는 기관지 폐색 기도 폐색 점액 폐색 기저 폐 부종 등이 있습니다.,Other Factors: Other factors include bronchial obstruction airway obstruction mucus obstruction and basal lung edema.,호흡 곤란: atelectasis가 발생하면 흉강 내에서 적절한 기도 흐름이 제한되므로 호흡 곤란이 발생할 수 있습니다.,Breathing Difficulty: When atelectasis occurs the appropriate airway flow in the chest cavity is restricted which can lead to difficulty in breathing.,폐 소리의 변화: atelectasis로 인해 폐조직이 축소되거나 부분적으로 붕괴되면 폐 소리가 변화할 수 있습니다. 이는 청진기로 폐 소리를 들을 때 확인할 수 있습니다.,Changes in Lung Sounds: If lung tissue shrinks or partially collapses due to atelectasis lung sounds can change. This can be confirmed when listening to lung sounds with a stethoscope.,폐의 축소: Atelectasis로 인해 폐가 부분적으로 또는 전체적으로 축소되면 X-선 사진에서 해당 부위의 폐 크기 감소를 확인할 수 있습니다.,Shrinkage of the Lung: If the lung shrinks partially or entirely due to atelectasis a decrease in the size of the lung in that area can be confirmed in the X-ray image.,폐선의 이동: Atelectasis로 인해 폐 일부가 축소되면 해당 부위의 폐선이 이동하는 것을 X-선 사진에서 확인할 수 있습니다.,Movement of Lung Lobes: If a part of the lung shrinks due to atelectasis the movement of the lung lobe in that area can be confirmed in the X-ray image.,폐 라인의 이상: Atelectasis가 있는 경우 폐 라인이 이상하게 나타나는 것을 X-선 사진에서 확인할 수 있습니다. 이는 폐조직의 축소 또는 부풀기 부족으로 인해 발생합니다.,Abnormal Lung Line: In cases of atelectasis an abnormal lung line can be confirmed in the X-ray image. This can occur due to the shrinkage or insufficient inflation of the lung tissue.');



INSERT INTO similar_lesion (
    lesion_code, lesion_name, 
    lesion_photos, 
    explanation
) VALUES (
    '009', 'No Finding','https://project212.s3.ap-northeast-2.amazonaws.com/1701164925100-00000005_004.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701148808910-00000013_022.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701142159959-00000027_000.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077849075-00000013_014.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077633589-00000003_004.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077598558-00000013_033.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077533796-00000003_003.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701077499670-00000005_003.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701071187074-00000118_007.png,https://project212.s3.ap-northeast-2.amazonaws.com/1701070010946-00000147_001.png', '병변이 검출되지 않았습니다.,No Finding.,병변이 검출되지 않았습니다.,No Finding.');


    
    
    
    
drop table similar_lesion;
select * from similar_lesion;
ALTER TABLE similar_lesion COMMENT '유사병변';

-- Forign Key 설정 (similar_lesion == result)
ALTER TABLE similar_lesion
   ADD CONSTRAINT FK_similar_lesion_lesion_code FOREIGN KEY (lesion_code)
      REFERENCES result (lesion_code) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Forign Key 삭제
ALTER TABLE similar_lesion
DROP FOREIGN KEY FK_similar_lesion_lesion_code;


-- 비밀테이블
CREATE TABLE secret(
   link VARCHAR(2000) NOT NULL,
    lesion_code VARCHAR(30) NOT NULL,
    lesion_name VARCHAR(50)
);

ALTER TABLE secret COMMENT '비밀테이블';