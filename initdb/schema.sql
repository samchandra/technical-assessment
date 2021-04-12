create schema pushservicedbdev collate utf8mb4_unicode_ci;

-- applications: table
CREATE TABLE `applications`
(
    `id`           int(16)                                 NOT NULL AUTO_INCREMENT,
    `app_id`       varchar(64) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `app_name`     varchar(64) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `app_desc`     varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `service_type` varchar(32) COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT 'firebase',
    `sender_id`    varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `server_key`   varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_active`    tinyint(1)                                       DEFAULT '1',
    `created_at`   datetime                                NOT NULL,
    `created_by`   varchar(16) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `updated_at`   datetime                                NOT NULL,
    `updated_by`   varchar(16) COLLATE utf8mb4_unicode_ci  NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `applications_app_id_uindex` (`app_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

-- devices: table
CREATE TABLE `devices`
(
    `id`             int(16)                                 NOT NULL AUTO_INCREMENT,
    `application_id` int(16)                                 NOT NULL,
    `user_id`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `service_token`  varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `device_model`   varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `device_os`      varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `os_version`     varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `app_version`    varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `is_active`      tinyint(1)                              DEFAULT '1',
    `created_at`     datetime                                DEFAULT NULL,
    `created_by`     varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `updated_at`     datetime                                DEFAULT NULL,
    `updated_by`     varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

