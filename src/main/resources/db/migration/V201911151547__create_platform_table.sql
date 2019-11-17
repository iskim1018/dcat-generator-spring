CREATE TABLE IF NOT EXISTS `platforms` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR (255) COMMENT '플랫폼명',
    `charger_name` VARCHAR (10) COMMENT '담당자명',
    `charger_email` VARCHAR (50) COMMENT '담당자 Email 주소',
    `api_url` VARCHAR (255) COMMENT 'API 호출 URL(Endpoint + Resource)',
    `api_key` VARCHAR (255) COMMENT 'API 인증키',
    `last_fetched` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;
