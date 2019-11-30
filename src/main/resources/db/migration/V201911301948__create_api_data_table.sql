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
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;