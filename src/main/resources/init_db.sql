create table todo_list(
    `id`        BIGINT(20)    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `title`     nvarchar(300) NOT NULL COMMENT 'title',
    `level`     tinyint       NULl     default '0' COMMENT 'level',
    `status`    tinyint       NOT NULL default '0' COMMENT 'status',
    `parent_id` BIGINT(20)    NULL     COMMENT 'parent_id',
    `expect_start_time`       timestamp NULL COMMENT 'expect start time',
    `expect_end_time`         timestamp NULL COMMENT 'expect end time',
    `create_time`             timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`             timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_parent`(`parent_id`),
    KEY `idx_createtime_status`(`create_time`, `status`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'todo list';