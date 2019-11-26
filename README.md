# JAVA 기반의 DCAT 생성 예제

## 개요 
- Template Engine([thymeleaf](https://www.thymeleaf.org/))를 활용한 DCAT(RDF/XML형식) 생성 예제
- 예제는 API 호출시마다 DB상에 저장된 메타데이터 내용을 추출하여 결과를 반환하는 API 서버 예시임 

## 사전 설치 필요 패키지
- Java 8
- Mysql server 5.7
- maven

## 테스트 절차
- 테스트 db 생성
  - Empty DB를 신규 생성하거나
  - 기존 DB를 사용할 경우는 <code>src/main/resource/db/migration</code> 폴더 아래의 파일들을 삭제
  - Empty DB를 사용하는 경우는 [flyway](https://flywaydb.org/)를 통하여 자동 생성됨
- application.yml 설정
  - <code>src/main/resources/application-sample.yml</code>을 복사하여 동일한 디렉토리에 application.yml 생성
  - application.yml의 datasource 부분의 url, username, password를 테스트할 db에 맞게 정보 수정
- maven을 이용한 빌드
  ```
   $ mvn install
  ```  
- API 서버 구동
  - SpringBoot 2.2.1 이용
    ```
     $ mvn spring-boot:run
    ```
  - localhost의 TCP port 8080을 사용(기존 8080 port를 사용하고 있는 daemon 확인 필요)

- API 요청 테스트 
   ```
    $ curl -X GET 'http://localhost:8080/api/metadata?=' -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoi7YWM7Iqk7Yq4IO2UjOueq-2PvCJ9.XKPLUDfKGskCFudc9-YeUF2sSdIu-zYQIKKX0Km2KWQ' -H 'Content-Type: application/xml;charset=UTF-8'
   ```
