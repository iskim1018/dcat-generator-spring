# JAVA 기반의 DCAT 생성 예제

Template Engine([thymeleaf](https://www.thymeleaf.org/))를 활용한 DCAT 생성

* Configuration
  * src/main/resources/application-sample.yml 복사하여 application.yml 생성 및 datasource 정보 입력

* Framework 환경
  * Java 8
  * SpringBoot 2.2.1

* System dependencies
  * Maven

* Database
  * mysql 5.7
  * [flyway](https://flywaydb.org/)를 통한 migration 관리
      * src/main/resources/db/migration 참조(별도로 직접 DB 및 Table을 생성한 경우 삭제 필요)

* 테스트 
```sh
curl -X GET \
  'http://localhost:8080/api/metadata?=' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoi7YWM7Iqk7Yq4IO2UjOueq-2PvCJ9.XKPLUDfKGskCFudc9-YeUF2sSdIu-zYQIKKX0Km2KWQ' \
  -H 'Content-Type: application/xml;charset=UTF-8'
```