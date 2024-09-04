CREATE TABLE `mrp`.`version_content`
(
    `p_id`    INT  NOT NULL AUTO_INCREMENT,
    `id`      INT  NOT NULL,
    `version` INT  NOT NULL,
    `content` TEXT NOT NULL,
    PRIMARY KEY (`p_id`)
) ENGINE = MyISAM;


INSERT INTO version_content (id, version, content)
VALUES (1, 1, 'mXvwjkeBzbkA'),
       (2, 1, 'RcgqsTK5XYPS'),
       (1, 2, 'DntzKspfAVzr'),
       (1, 3, 'P5fjUWxNfrsa');
