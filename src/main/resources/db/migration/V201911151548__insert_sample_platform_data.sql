-- 테스트를 위한 인증 서버 및 인증키 정보 등록
INSERT INTO platforms(title, charger_name, charger_email, api_url, api_key)
VALUES (
    '테스트 플랫폼', '김인성', 'is.kim@promptech.co.kr',
    'http://localhost:8080/api/metadata',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoi7YWM7Iqk7Yq4IO2UjOueq-2PvCJ9.XKPLUDfKGskCFudc9-YeUF2sSdIu-zYQIKKX0Km2KWQ'
);