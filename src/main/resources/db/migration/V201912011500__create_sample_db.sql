CREATE TABLE IF NOT EXISTS `users` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `name` VARCHAR(32) COMMENT '담당자명',
       `email` VARCHAR(255) COMMENT '담당자 Email',
       `phone` VARCHAR(32) COMMENT '담당자 전화번호',
       `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `catalogs` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `platform_id` BIGINT(20) NOT NULL,
       `title` VARCHAR(255),
       `desc` TEXT,
       `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `datasets` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `catalog_id` BIGINT(20) NOT NULL,
       `user_id` BIGINT(20) NOT NULL,
       `title` VARCHAR(255),
       `desc` TEXT,
       `used` TINYINT(1),
       `license` VARCHAR(255),
       `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `access_rights` VARCHAR(255),
       `landing_page` VARCHAR(255) NOT NULL DEFAULT '',
       `rights` VARCHAR(255),
       `accrual_periodicity` VARCHAR(255),
       `spatial` LONGTEXT,
       `spatial_resolution_in_meters` VARCHAR(20),
       `temporal` VARCHAR(255),
       `temporal_resolution` VARCHAR(255),
       `version` VARCHAR(50),
       `version_description` VARCHAR(255),
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `file_data` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `dataset_id` BIGINT(20) NOT NULL,
       `filename` VARCHAR(255),
       `ext` VARCHAR(255),
       `bytes` INT,
       `used` TINYINT(1),
       `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `dataset_keywords` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `dataset_id` BIGINT(20) NOT NULL,
       `keyword` VARCHAR(255),
       `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `platforms` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `title` VARCHAR (255) COMMENT '플랫폼명',
       `name` VARCHAR (10) COMMENT '기관명',
       `email` VARCHAR (50) COMMENT '기관 대표 Email 주소',
       `phone` VARCHAR (32) COMMENT '기관 대표 전화번호',
       `api_url` VARCHAR (255) COMMENT 'API 호출 URL(Endpoint + Resource)',
       `api_key` VARCHAR (255) COMMENT 'API 인증키',
       `last_fetched` DATETIME DEFAULT CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `api_data` (
       `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
       `catalog_id` BIGINT(20) NOT NULL,
       `user_id` BIGINT(20) NOT NULL,
       `title` VARCHAR(255),
       `desc` TEXT,
       `used` TINYINT(1),
       `license` VARCHAR(255),
       `access_rights` VARCHAR(255),
       `landing_page` VARCHAR(255) NOT NULL DEFAULT '',
       `rights` VARCHAR(255),
       `version` VARCHAR(50),
       `endpoint_url` VARCHAR(255),
       `endpoint_desc` TEXT,
       `price_info` TEXT,
       `quality_info` TEXT,
       `version_description` VARCHAR(255),
       `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO users(name, email, phone, created_at, updated_at)
VALUES ('홍길동', 'hong@koti.re.kr', '02-1234-5678', NOW(), NOW());

INSERT INTO catalogs(title, `desc`, platform_id, created_at, updated_at)
VALUES('교통', '교통 분야 데이터 카탈로그', 1, NOW(), NOW());

INSERT INTO datasets(catalog_id, title, `desc`, user_id, used, license, created_at, updated_at)
VALUES(1, '교통사고통계', '교통사고통계', 1, true, 'https://creativecommons.org/publicdomain/zero/1.0/', NOW(), NOW());

INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (1, '도로교통공단_월별_주야별 교통사고(2013)_20190910', 'CSV', 10485760, 1, NOW(), NOW());
INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (1, '도로교통공단_월별_주야별 교통사고(2012)_20190910', 'CSV', 10485760, 1, NOW(), NOW());
INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (1, '도로교통공단_월별_주야별 교통사고(2011)_20190910', 'CSV', 10485760, 1, NOW(), NOW());

INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (1, '도로교통공단', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (1, '교통사고', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (1, '사고통계', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (1, '교통안전법', NOW(), NOW());


INSERT INTO datasets(catalog_id, title, `desc`, user_id, used, license, created_at, updated_at)
VALUES(1, '도로교통공단 교통사고 정보', '교통사고정보를 위치데이터 기반 제공교통사고 항목 별 정보제공', 1, true, 'https://creativecommons.org/publicdomain/zero/1.0/', NOW(), NOW());

INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (2, '도로교통공단_교통사고다발지역_20191010', 'CSV', 10485760, 1, NOW(), NOW());
INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (2, '도로교통공단_교통사고다발지역_20190930', 'CSV', 10485760, 1, NOW(), NOW());

INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (2, '교통사고 다발지역', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (2, '사망 교통사고 정보', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (2, '교통안전', NOW(), NOW());


INSERT INTO datasets(catalog_id, title, `desc`, user_id, used, license, created_at, updated_at)
VALUES(1, '서울특별시 교통 통계', '서울시 통계정보시스템에서 제공하는 교통에 관련된 통계정보 입니다', 1, true, 'https://creativecommons.org/publicdomain/zero/1.0/', NOW(), NOW());

INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (3, '서울시 인천공항 직항로 도시 수 통계 (연간)', 'CSV', 10485760, 1, NOW(), NOW());
INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (3, '서울시 통근통학 (소요시간) 통계 (연간)', 'CSV', 10485760, 1, NOW(), NOW());

INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (3, '자동차', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (3, '버스', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (3, '지하철', NOW(), NOW());

INSERT INTO datasets(catalog_id, title, `desc`, user_id, used, license, created_at, updated_at)
VALUES(1, '도로교통감정사 직종별 취득현황 및 실시현황', '도로교통감정사 직종별 취득현황 및 실시현황', 1, true, 'https://creativecommons.org/publicdomain/zero/1.0/', NOW(), NOW());

INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (4, '도로교통사고감정사 자격검정 실시현황(2013년~2017년)', 'CSV', 10485760, 1, NOW(), NOW());
INSERT INTO file_data(dataset_id, filename, ext, bytes, used, created_at, updated_at)
VALUES (4, '도로교통사고감정사 자격검정 직종별 취득현황(2013년~2017년)', 'CSV', 10485760, 1, NOW(), NOW());

INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (4, '감정사', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (4, '직종별 현황', NOW(), NOW());
INSERT INTO dataset_keywords(dataset_id, keyword, created_at, updated_at)
VALUES (4, '도감사', NOW(), NOW());

-- 테스트를 위한 인증 서버 및 인증키 정보 등록
INSERT INTO platforms(title, name, email, phone, api_url, api_key)
VALUES ('교통분야 빅데이터 플랫폼', '교통안전연구원', 'support@koti.re.kr', '010-1234-5678',
    'http://localhost:8080/api/metadata',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoi7YWM7Iqk7Yq4IO2UjOueq-2PvCJ9.XKPLUDfKGskCFudc9-YeUF2sSdIu-zYQIKKX0Km2KWQ'
);

INSERT INTO api_data(catalog_id, user_id, title, `desc`, used, license, endpoint_url)
VALUES(1, 1, '도로명주소조회서비스', '우정사업본부에서는 도로명주소 체계로 변경되는 새우편번호(2015.8.1 시행) 및 기존 우편번호 정보를 조회하는 기능의 오픈API 서비스를 제공합니다.', true, 'https://creativecommons.org/publicdomain/zero/1.0/', 'http://openapi.epost.go.kr');
