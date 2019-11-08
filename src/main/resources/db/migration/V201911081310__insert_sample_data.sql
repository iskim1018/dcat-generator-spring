INSERT INTO users(email, created_at, updated_at)
VALUES ('is.kim@promptech.co.kr', NOW(), NOW());

INSERT INTO categories(title, `desc`, created_at, updated_at)
VALUES('교통', '교통 분야 데이터 카탈로그', NOW(), NOW());

INSERT INTO datasets(category_id, title, `desc`, user_id, used, license, created_at, updated_at)
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


INSERT INTO datasets(category_id, title, `desc`, user_id, used, license, created_at, updated_at)
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


INSERT INTO datasets(category_id, title, `desc`, user_id, used, license, created_at, updated_at)
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

INSERT INTO datasets(category_id, title, `desc`, user_id, used, license, created_at, updated_at)
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