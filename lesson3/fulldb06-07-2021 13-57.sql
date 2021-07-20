#
# TABLE STRUCTURE FOR: cities
#

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (1, 'Maritzafort', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (2, 'Lake Cassandre', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (3, 'New Matildemouth', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (4, 'Cortneychester', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (5, 'Bogisichmouth', 5);


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quia', '2020-09-23 18:53:52', '2013-06-03 18:37:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'et', '2013-01-10 07:04:29', '2012-07-21 03:01:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'voluptate', '2015-10-18 19:14:46', '2018-09-21 14:45:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quae', '2015-04-22 19:17:24', '2011-09-09 15:15:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'recusandae', '2014-03-26 23:30:17', '2021-06-22 05:24:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'praesentium', '2011-08-06 02:18:06', '2012-01-25 21:57:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'ratione', '2018-12-31 18:14:42', '2017-07-26 05:41:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'numquam', '2019-12-10 10:43:58', '2018-04-13 15:48:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'amet', '2014-04-01 06:27:35', '2017-02-16 04:13:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'iure', '2015-06-24 14:24:42', '2017-01-13 07:43:38');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2013-12-12 08:59:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '2020-12-30 09:40:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2021-06-19 18:37:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '2017-06-02 23:58:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '2017-01-18 13:07:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '2021-05-27 18:40:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2014-04-26 05:37:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '2020-09-07 03:47:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '2012-04-22 21:12:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2012-05-24 00:27:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2015-11-26 20:59:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2012-10-20 19:01:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2016-10-28 18:15:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2014-05-10 20:48:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2020-03-11 13:05:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '2012-10-21 13:01:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2019-07-29 18:51:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '2020-06-07 00:26:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '2020-11-17 08:34:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2014-07-08 00:08:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2014-09-24 21:14:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '2012-05-19 03:34:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2021-02-28 22:54:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '2012-08-20 14:09:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '2017-08-01 11:25:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2013-05-21 21:12:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2017-06-03 01:01:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '2019-12-25 02:30:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '2016-10-31 18:30:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2015-04-06 19:03:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2011-12-16 02:55:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '2018-06-19 11:34:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2016-10-23 09:36:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2014-09-01 01:25:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '2016-01-29 19:34:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '2017-07-31 13:15:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2017-04-27 19:09:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '2019-08-30 03:25:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '2011-10-15 10:04:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2012-06-11 16:57:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2013-09-28 11:10:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '2016-07-14 01:26:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '2013-09-02 20:54:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '2011-07-29 02:36:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2020-10-21 02:55:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '2020-05-30 15:46:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2014-09-14 16:57:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '2015-07-20 05:20:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '2016-03-17 10:14:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2019-05-31 16:08:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2014-06-25 04:33:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '2015-02-08 03:00:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2014-10-10 09:16:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2019-03-01 20:58:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2015-11-25 09:46:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2019-04-25 21:56:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2018-10-06 19:44:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '2019-08-07 07:55:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2016-08-25 18:42:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2011-09-07 22:15:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2014-06-17 11:56:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '2017-10-06 00:16:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '2017-06-12 12:38:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '2014-05-31 12:53:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2019-06-12 00:01:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '2012-08-21 08:31:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2011-07-22 10:16:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '2018-05-26 19:58:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '2018-11-17 20:42:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '2013-06-05 02:50:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2017-10-01 20:01:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '2015-01-14 20:35:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2015-09-02 19:32:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2020-01-15 12:14:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2012-07-28 20:08:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '2021-05-13 15:55:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2020-04-13 04:36:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '2011-10-02 02:32:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '2017-10-27 17:42:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '2019-05-04 23:16:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2019-05-07 15:44:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '2014-10-31 23:09:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2014-11-24 22:16:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '2014-01-26 15:04:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '2012-01-26 01:56:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '2020-05-10 15:28:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2020-09-05 03:01:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '2016-12-18 00:11:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2018-01-15 02:19:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2015-01-11 10:34:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2013-12-23 04:35:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2015-06-11 13:33:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2016-07-12 16:55:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2016-05-27 20:20:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2016-10-08 04:02:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '2016-02-13 08:45:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2020-07-22 08:49:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '2013-08-05 14:36:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2018-04-27 05:13:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '2012-01-11 20:53:15');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `name`) VALUES (1, 'Swaziland');
INSERT INTO `countries` (`id`, `name`) VALUES (2, 'Bermuda');
INSERT INTO `countries` (`id`, `name`) VALUES (3, 'Niger');
INSERT INTO `countries` (`id`, `name`) VALUES (4, 'Czech Republic');
INSERT INTO `countries` (`id`, `name`) VALUES (5, 'Uruguay');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 9, 1, '2016-05-11 11:26:42', '2012-06-15 02:20:23', '2012-12-08 11:39:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 9, 2, '2016-07-18 02:51:59', '2012-04-22 18:28:04', '2016-07-04 22:49:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 94, 3, '2015-08-12 16:24:03', '2015-10-21 16:37:33', '2018-09-17 04:57:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 21, 4, '2019-06-02 13:03:29', '2018-02-01 04:51:11', '2016-03-21 14:32:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 2, 5, '2018-05-28 01:42:21', '2020-07-01 14:30:20', '2019-08-08 13:48:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 50, 1, '2013-03-16 16:09:52', '2013-11-18 21:19:51', '2015-06-19 07:57:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 4, 2, '2012-08-09 04:30:30', '2016-02-04 00:25:25', '2016-01-30 10:53:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 34, 3, '2013-09-27 14:26:01', '2020-06-12 09:18:43', '2014-08-17 08:32:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 26, 4, '2020-03-24 05:35:51', '2016-01-25 19:15:05', '2012-08-31 02:30:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 27, 5, '2012-11-27 04:49:52', '2012-08-11 10:38:25', '2012-12-15 17:12:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 80, 1, '2014-04-04 12:23:10', '2013-05-02 00:59:54', '2012-06-07 11:09:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 2, 2, '2014-05-30 10:44:37', '2016-10-21 09:46:44', '2017-07-09 23:53:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 17, 3, '2017-11-13 21:59:54', '2012-11-16 05:04:49', '2013-01-16 22:34:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 42, 4, '2015-06-15 05:29:15', '2016-06-14 11:08:30', '2017-03-20 08:56:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 24, 5, '2019-10-05 06:50:56', '2014-10-28 18:27:57', '2019-09-19 10:34:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 51, 1, '2012-09-24 02:46:12', '2019-01-13 01:44:38', '2011-12-04 20:57:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 3, 2, '2019-11-09 23:25:20', '2013-03-12 08:22:17', '2018-04-29 12:13:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 81, 3, '2014-01-22 12:44:25', '2011-07-24 18:38:15', '2020-02-10 10:26:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 93, 4, '2016-05-05 12:50:12', '2021-07-04 03:13:35', '2019-09-16 20:39:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 96, 5, '2015-08-07 14:24:35', '2015-08-08 14:44:30', '2017-08-04 03:16:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 26, 1, '2021-02-26 23:04:50', '2015-04-28 08:28:05', '2020-12-23 14:50:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 3, 2, '2019-07-26 15:48:08', '2014-06-09 14:51:30', '2020-05-06 00:51:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 67, 3, '2017-09-22 08:04:32', '2018-09-22 12:04:22', '2012-01-30 08:01:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 52, 4, '2020-11-20 20:01:30', '2016-09-23 20:00:04', '2015-12-25 11:22:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 68, 5, '2012-04-01 18:07:20', '2015-04-05 08:21:34', '2019-07-03 02:46:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 88, 1, '2011-12-16 02:47:55', '2019-06-04 16:43:05', '2015-10-30 06:52:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 22, 2, '2017-09-23 09:34:59', '2012-12-08 00:24:45', '2017-05-26 13:02:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 43, 3, '2018-01-17 04:23:11', '2012-04-17 08:57:25', '2011-11-15 20:08:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 47, 4, '2014-08-21 11:22:37', '2017-04-28 18:26:05', '2013-12-17 22:04:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 61, 5, '2018-05-12 22:44:55', '2014-08-31 07:57:34', '2020-01-27 18:53:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 75, 1, '2013-04-27 07:29:09', '2018-07-28 04:42:15', '2020-02-22 10:56:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 46, 2, '2020-06-24 11:01:16', '2020-04-22 04:04:06', '2012-07-20 02:32:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 65, 3, '2016-01-29 22:33:21', '2016-06-20 16:14:36', '2014-09-11 18:41:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 86, 4, '2017-04-30 11:56:14', '2016-07-24 21:30:31', '2014-03-24 21:01:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 23, 5, '2019-05-23 12:49:08', '2011-09-18 09:26:55', '2020-05-26 12:46:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 4, 1, '2012-01-30 23:01:25', '2015-05-30 21:14:58', '2017-08-10 10:52:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 59, 2, '2013-04-27 08:01:12', '2017-04-12 18:35:33', '2012-06-11 14:21:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 100, 3, '2020-04-03 17:51:24', '2020-11-03 20:22:18', '2017-10-06 08:28:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 12, 4, '2013-11-06 04:16:47', '2017-02-08 10:06:01', '2012-05-12 00:42:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 42, 5, '2015-08-23 03:07:39', '2015-09-12 11:56:31', '2020-07-23 06:29:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 13, 1, '2016-09-30 17:02:54', '2016-05-09 17:49:05', '2011-12-15 00:25:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 37, 2, '2013-01-09 02:29:58', '2021-01-12 13:07:10', '2012-02-21 14:36:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 96, 3, '2012-07-28 19:51:13', '2019-12-03 14:37:39', '2020-03-10 14:48:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 86, 4, '2015-06-15 07:56:33', '2015-08-15 21:05:55', '2013-04-24 05:44:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 4, 5, '2020-07-22 20:25:45', '2015-02-23 21:44:05', '2020-05-31 05:01:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 42, 1, '2012-03-27 10:47:24', '2021-05-14 18:22:24', '2016-09-20 07:59:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 71, 2, '2016-06-26 06:00:34', '2020-09-08 16:27:02', '2018-11-07 12:31:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 68, 3, '2014-04-23 03:20:53', '2013-10-27 14:44:38', '2020-11-23 17:48:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 65, 4, '2011-11-19 03:29:52', '2021-03-05 22:05:57', '2021-04-03 22:31:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 92, 5, '2019-02-28 17:08:17', '2017-03-10 09:57:03', '2014-01-22 07:57:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 84, 1, '2013-03-24 13:00:34', '2013-05-25 12:15:20', '2017-06-14 22:12:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 41, 2, '2011-10-16 06:05:51', '2016-08-29 05:23:29', '2013-06-14 07:47:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 86, 3, '2017-04-29 17:06:55', '2015-01-10 06:29:42', '2013-04-02 10:28:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 89, 4, '2020-02-19 05:06:51', '2017-05-19 08:06:27', '2015-07-21 05:14:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 28, 5, '2017-02-08 05:32:09', '2016-04-24 23:55:38', '2013-06-22 05:47:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 67, 1, '2017-07-29 04:32:18', '2017-10-21 17:59:03', '2013-10-10 18:02:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 79, 2, '2013-01-21 23:56:45', '2014-10-24 10:17:00', '2012-12-22 17:20:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 76, 3, '2015-08-03 10:33:04', '2020-08-29 06:25:33', '2011-11-21 21:57:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 98, 4, '2018-02-21 08:55:16', '2012-01-05 21:03:44', '2016-01-31 00:18:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 77, 5, '2017-08-12 00:21:26', '2015-11-03 01:39:31', '2019-02-13 22:10:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 81, 1, '2017-03-24 00:56:37', '2011-11-27 16:37:09', '2016-10-31 07:59:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 86, 2, '2012-10-04 01:05:59', '2015-09-19 03:51:29', '2011-10-23 01:08:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 19, 3, '2020-10-01 16:25:46', '2017-05-01 23:08:54', '2021-03-27 20:48:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 98, 4, '2012-05-31 15:31:26', '2015-04-24 16:55:18', '2012-05-10 02:55:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 93, 5, '2017-08-24 11:30:04', '2020-05-15 17:59:32', '2014-10-05 13:30:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 68, 1, '2011-12-19 12:46:03', '2012-08-23 04:25:08', '2014-11-01 05:58:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 8, 2, '2016-01-23 20:55:09', '2016-02-14 07:06:49', '2012-04-21 11:58:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 49, 3, '2013-03-31 20:18:07', '2015-07-29 13:12:38', '2020-01-03 08:50:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 36, 4, '2012-03-01 12:10:38', '2014-09-12 14:47:05', '2014-01-25 04:18:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 52, 5, '2018-11-27 01:51:54', '2015-03-15 07:08:00', '2015-05-15 03:07:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 5, 1, '2018-02-03 16:26:42', '2014-12-05 12:47:27', '2017-04-10 14:46:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 25, 2, '2015-05-24 05:47:09', '2017-11-27 00:36:04', '2019-05-17 01:53:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 35, 3, '2019-02-11 19:56:10', '2015-09-24 07:27:24', '2012-12-01 03:29:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 14, 4, '2012-07-16 02:29:30', '2018-08-03 20:59:32', '2014-06-21 22:44:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 14, 5, '2020-03-19 15:17:57', '2019-08-24 05:55:43', '2015-10-13 17:20:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 3, 1, '2013-11-13 23:32:57', '2017-08-21 08:03:33', '2014-03-30 17:38:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 14, 2, '2013-09-22 08:00:22', '2016-10-29 14:16:25', '2019-06-19 04:50:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 98, 3, '2016-10-13 05:36:04', '2013-04-14 23:18:29', '2020-08-17 14:58:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 71, 4, '2012-05-25 13:48:53', '2013-08-31 16:41:32', '2011-12-09 05:26:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 78, 5, '2016-12-06 05:35:00', '2019-11-29 20:28:10', '2013-09-09 15:09:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 37, 1, '2017-09-03 11:22:10', '2013-12-31 09:38:24', '2017-10-21 20:08:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 94, 2, '2019-05-10 19:43:26', '2015-04-10 04:37:53', '2016-05-30 23:52:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 51, 3, '2018-12-22 12:51:56', '2018-07-13 16:29:34', '2017-11-04 01:10:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 38, 4, '2013-04-18 23:04:48', '2017-09-14 20:25:18', '2019-07-13 06:37:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 34, 5, '2015-03-19 07:38:05', '2017-04-13 23:13:57', '2017-04-26 05:48:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 36, 1, '2015-06-09 23:07:05', '2018-07-20 10:43:23', '2020-04-11 09:35:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 95, 2, '2021-03-16 12:13:11', '2019-11-23 12:38:27', '2015-07-15 12:46:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 72, 3, '2017-04-02 11:51:37', '2018-04-08 18:13:20', '2015-10-18 09:35:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 55, 4, '2013-03-06 16:49:06', '2017-04-25 18:36:36', '2019-01-24 08:19:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 89, 5, '2014-03-06 06:06:23', '2019-09-17 03:14:35', '2020-07-30 06:30:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 74, 1, '2018-08-17 10:31:59', '2015-07-08 00:54:52', '2013-06-08 14:59:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 89, 2, '2013-03-13 10:59:16', '2017-11-19 15:06:16', '2018-03-15 19:54:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 50, 3, '2020-01-07 17:25:41', '2021-06-05 11:45:54', '2021-03-29 23:38:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 71, 4, '2011-07-29 05:53:50', '2017-07-17 19:57:20', '2019-11-26 12:03:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 38, 5, '2015-11-17 08:27:58', '2019-12-10 07:55:15', '2014-10-03 11:23:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 95, 1, '2011-12-21 04:19:37', '2018-11-24 10:58:17', '2018-05-18 20:02:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 72, 2, '2018-04-02 04:50:30', '2013-12-01 07:11:10', '2018-05-24 17:29:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 16, 3, '2016-05-14 00:57:44', '2012-04-15 19:31:31', '2011-09-01 09:37:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 49, 4, '2015-01-25 08:50:50', '2011-12-07 07:45:05', '2016-01-04 03:56:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 57, 5, '2021-03-24 04:18:31', '2013-02-03 04:16:40', '2013-01-26 12:19:19');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'voluptas', '2011-12-29 13:39:55', '2019-10-08 11:52:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nihil', '2018-02-04 20:00:42', '2019-12-31 03:50:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'magnam', '2012-09-08 05:46:58', '2015-12-07 08:00:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'harum', '2013-12-24 15:42:15', '2019-06-10 10:54:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'iste', '2013-02-05 05:27:24', '2019-01-20 13:43:47');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'et', 94, NULL, 1, '2016-08-26 20:31:46', '2018-08-24 05:05:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'velit', 24, NULL, 2, '2012-05-22 01:14:23', '2017-05-28 08:07:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'sit', 1, NULL, 3, '2019-06-16 04:41:54', '2016-09-14 01:30:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'deleniti', 32, NULL, 4, '2013-03-20 21:20:03', '2012-05-28 16:25:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'autem', 90, NULL, 5, '2014-10-28 02:18:32', '2014-06-21 12:49:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'quisquam', 17, NULL, 6, '2012-11-19 15:56:12', '2020-03-25 21:52:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'et', 79, NULL, 7, '2015-10-01 06:29:24', '2011-11-03 13:01:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'et', 6, NULL, 1, '2020-06-30 06:40:13', '2015-05-03 07:06:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'hic', 1, NULL, 2, '2014-06-07 00:56:33', '2020-07-01 10:08:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'consequatur', 86, NULL, 3, '2019-07-03 11:59:05', '2015-11-16 14:14:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'nisi', 100, NULL, 4, '2016-01-04 07:29:56', '2021-03-07 23:34:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'perspiciatis', 20, NULL, 5, '2021-01-31 11:54:02', '2020-05-03 21:14:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'dolor', 18, NULL, 6, '2016-09-18 05:09:38', '2016-07-28 05:45:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'sint', 79, NULL, 7, '2013-05-13 09:33:24', '2016-01-17 20:39:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'cumque', 64, NULL, 1, '2013-01-29 14:35:36', '2018-10-04 17:47:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'laboriosam', 25, NULL, 2, '2012-11-02 07:54:07', '2014-05-07 21:09:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'quas', 11, NULL, 3, '2015-07-17 18:19:11', '2019-05-31 01:16:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'officiis', 3, NULL, 4, '2014-09-14 02:35:15', '2012-09-09 13:50:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'eos', 52, NULL, 5, '2014-11-09 23:03:35', '2012-11-07 12:44:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'et', 69, NULL, 6, '2013-08-31 00:18:11', '2017-10-25 07:38:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'veritatis', 68, NULL, 7, '2019-03-29 18:18:32', '2016-05-18 18:03:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'magnam', 87, NULL, 1, '2021-04-02 05:30:26', '2012-03-30 15:18:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'eum', 29, NULL, 2, '2020-02-26 04:55:11', '2017-09-13 07:22:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'deserunt', 55, NULL, 3, '2013-02-07 02:20:31', '2019-07-04 20:57:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'in', 67, NULL, 4, '2020-12-31 05:41:34', '2014-01-20 12:01:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'labore', 7, NULL, 5, '2013-07-11 02:07:43', '2014-05-30 21:54:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'cupiditate', 68, NULL, 6, '2016-04-25 19:00:55', '2021-04-06 19:18:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'tenetur', 37, NULL, 7, '2014-11-30 23:07:42', '2014-03-24 10:20:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'harum', 76, NULL, 1, '2013-05-13 16:02:20', '2015-10-03 07:25:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'repudiandae', 81, NULL, 2, '2012-08-06 02:45:21', '2013-06-14 16:55:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'ratione', 31, NULL, 3, '2019-07-13 02:31:23', '2019-05-02 00:09:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'iure', 45, NULL, 4, '2018-03-17 20:52:08', '2017-12-20 05:45:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'provident', 95, NULL, 5, '2014-07-23 02:01:09', '2013-05-14 21:06:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'quia', 55, NULL, 6, '2013-01-26 07:57:18', '2016-01-08 03:42:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'iusto', 6, NULL, 7, '2012-11-16 21:32:58', '2020-07-26 02:27:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'ipsum', 40, NULL, 1, '2020-11-25 11:56:42', '2015-10-11 22:27:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'vel', 36, NULL, 2, '2015-06-07 03:14:15', '2011-12-25 07:02:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'impedit', 63, NULL, 3, '2014-05-08 02:09:12', '2014-09-20 19:07:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'autem', 49, NULL, 4, '2017-09-24 13:58:23', '2016-05-21 23:09:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'harum', 21, NULL, 5, '2014-05-20 12:56:11', '2014-12-29 14:46:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'quas', 32, NULL, 6, '2017-02-26 20:24:38', '2013-05-26 14:21:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'minima', 73, NULL, 7, '2017-02-08 06:43:24', '2017-10-27 15:17:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'et', 73, NULL, 1, '2017-11-26 13:35:53', '2014-01-11 21:26:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'impedit', 47, NULL, 2, '2015-07-29 17:45:55', '2015-11-17 02:11:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'beatae', 47, NULL, 3, '2018-08-19 13:55:10', '2021-05-24 07:37:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'molestiae', 26, NULL, 4, '2020-04-09 22:29:47', '2013-08-04 08:20:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'adipisci', 73, NULL, 5, '2018-10-06 01:20:09', '2013-07-06 22:25:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'qui', 13, NULL, 6, '2017-12-03 01:43:58', '2018-08-22 15:05:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'est', 34, NULL, 7, '2014-11-08 23:37:13', '2013-03-28 23:33:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'alias', 9, NULL, 1, '2017-01-25 00:02:06', '2015-06-15 14:20:19');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'qxl', '2019-02-23 23:54:16', '2018-08-15 06:02:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ps', '2014-05-11 04:08:59', '2020-02-07 13:00:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'ez2', '2019-06-16 04:29:08', '2012-11-19 08:17:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dsc', '2019-09-25 14:47:25', '2017-08-04 00:55:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'mxl', '2014-11-08 01:01:13', '2016-08-08 20:32:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'kpr', '2018-01-26 10:52:49', '2014-07-26 20:36:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'obj', '2015-07-26 12:46:22', '2019-09-09 17:27:30');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Nisi debitis iure facere. A fuga aperiam est nemo illo. Rerum repudiandae laborum provident ipsum vel sed non.', 0, 0, '2015-08-15 13:40:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Quam ipsa ut quam. Quam ex incidunt totam quos rerum. Rerum ea rem vitae et laboriosam nostrum. Aut eum vel quia voluptas asperiores et soluta molestiae.', 0, 1, '2011-11-29 00:28:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Velit iste laudantium ipsam dolorem possimus. Quos eius est enim nobis. Provident rerum ipsam quibusdam quaerat ipsum.', 0, 0, '2016-09-29 14:16:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Quasi tenetur et impedit velit. Sed quam ipsam placeat qui iure. Sint alias maiores rerum ab rem voluptatibus qui. Autem sunt adipisci id quisquam ut id.', 0, 1, '2018-01-04 06:16:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Dolor rerum iusto nostrum quaerat. Non dolor eos rem vel. Ab quis esse quo soluta.', 0, 1, '2014-03-20 12:33:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Velit tenetur minima est error vero. Quas doloribus odio distinctio non et distinctio. Et molestiae qui repellendus labore. Autem consequatur voluptatem et nihil.', 0, 1, '2017-01-20 01:29:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Fugiat sint perferendis occaecati animi laudantium est deleniti voluptatem. Voluptatibus debitis animi id ut odio nesciunt. Optio sit dolore voluptatem voluptatum aut.', 1, 1, '2015-07-25 20:50:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Corrupti odit amet consequuntur voluptate et inventore. Aut rerum illum vitae nobis est sint repellendus. Vitae vero et officia occaecati qui voluptas.', 1, 1, '2015-07-28 23:00:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Et fuga ipsam doloribus dicta accusantium enim omnis eaque. Optio doloribus veritatis odit quia accusantium corporis natus quisquam. Vel est fugiat ab maxime assumenda quis.', 0, 1, '2018-02-13 13:40:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Fuga fuga maiores quam voluptatem ad sint sunt. Corporis quaerat facilis provident et cum et unde sit. At dignissimos et quos aspernatur ab error.', 1, 0, '2018-08-14 03:44:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Architecto alias sit a repellendus natus et. Eaque dicta nihil qui asperiores. Neque culpa nostrum ut vel. Distinctio qui et totam vitae incidunt rerum dolores.', 1, 0, '2019-08-22 05:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Perspiciatis et voluptatem ut voluptatibus ducimus ut. Sequi explicabo modi aspernatur adipisci quis laborum. Beatae tempora quas esse error doloremque iste aut.', 1, 1, '2018-08-20 00:52:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Illo maiores est nihil sed. Qui rerum eos exercitationem repudiandae rerum iste. Numquam vel reiciendis consequatur iure.', 0, 0, '2014-07-27 04:51:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Laborum velit autem nemo eos fugiat quisquam repellat. Corrupti sint enim dolorem rerum. Aut sunt ut inventore ducimus temporibus. Qui totam facere qui exercitationem eum.', 1, 1, '2019-01-10 09:41:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Eligendi suscipit iure ut est dignissimos quisquam. Blanditiis nihil itaque nostrum totam. Provident sit non maiores. Doloribus nisi sit cum consequatur.', 0, 1, '2021-02-22 09:17:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Commodi velit nemo quia similique. Blanditiis et qui dolorem aut nulla voluptatem voluptatum quidem. Nostrum quibusdam aut ad ipsum vel. Illo eum repudiandae saepe aut minus exercitationem. Quia modi sit quo error.', 1, 1, '2017-09-10 21:17:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Ut dolores non quos in. Ut assumenda laborum deserunt necessitatibus qui. Soluta aut placeat architecto similique occaecati.', 1, 1, '2011-07-24 23:59:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Qui dignissimos laborum beatae amet. Illum aspernatur aspernatur consequatur quam.', 1, 0, '2021-04-08 17:34:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Consequatur vel nihil aut consequuntur. Exercitationem odit consequatur corporis et et. Molestiae quae rem eum. Quia consequatur perferendis a nemo qui aut perferendis.', 0, 0, '2013-04-30 18:15:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Maiores omnis ea aut non et nemo voluptate. Vitae sint placeat id officia. Et magnam sint tenetur sapiente.', 1, 0, '2014-01-25 03:23:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Et ut qui placeat vitae. Est vel at aut vel dolor ea ad. Tempora ab commodi omnis in est sed.', 0, 1, '2017-06-21 19:41:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Esse libero dicta molestias ut ut. Voluptates iure libero laboriosam sit repudiandae numquam. Quisquam et dolorum vel quos rerum corporis. Tempore voluptas consectetur quaerat nam.', 0, 1, '2011-07-28 18:34:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Quibusdam non earum quo id dolorem. Cupiditate placeat et nisi velit aspernatur et sit. Est inventore eos vitae libero incidunt. Quaerat vero eos totam atque est sit ea.', 1, 0, '2014-03-03 03:05:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Eum quisquam aliquam magnam officiis voluptas minima. Doloribus cum voluptates doloribus fuga quia in et. Nobis perferendis eos est qui.', 0, 0, '2017-11-29 05:41:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Qui voluptatum accusantium occaecati delectus nulla omnis. Repudiandae nemo dignissimos reprehenderit et aut. Eaque impedit possimus expedita non laboriosam praesentium consectetur.', 1, 1, '2015-07-25 23:31:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Temporibus aut voluptas quo sint. Adipisci nostrum quae maxime quisquam et quos et iusto. Voluptatem iste id quis odio ad. Odio ducimus eius repellendus ut ut sit impedit.', 1, 0, '2020-10-20 21:05:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Sed pariatur labore aliquam temporibus corrupti beatae magni omnis. Blanditiis alias omnis culpa.', 1, 1, '2014-09-22 05:13:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Est voluptate iste quas tenetur ut. Consequuntur enim ipsum voluptatem ut. Voluptatem itaque temporibus ratione architecto consequuntur consequuntur doloribus qui. Voluptas asperiores pariatur quidem doloremque facilis officiis ratione.', 0, 0, '2020-01-02 04:46:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Sunt ut officia aut laborum illo. Inventore alias quia totam ut earum. Delectus voluptatem nostrum voluptatem odio vitae voluptatem.', 0, 0, '2014-12-30 17:25:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Et quo nemo ut quia id quod explicabo. Asperiores aut nam dicta magni similique. Similique rerum voluptas corrupti assumenda nesciunt tenetur. Est libero sint tempora sed qui aliquam aliquam.', 0, 0, '2020-08-17 07:18:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Doloribus consequuntur aut illum eos quia. Consequuntur sunt nulla consequatur. Alias voluptate dolorem labore iusto.', 1, 1, '2012-09-21 02:06:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Quia voluptates voluptate quia iure quo provident beatae. Perspiciatis et libero voluptatem aut consectetur similique inventore eos. Quidem nihil mollitia perspiciatis quas doloremque. Hic et iure perspiciatis dolores ea.', 1, 1, '2020-12-25 03:23:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Mollitia illo dolorem distinctio ducimus temporibus magni. Perferendis voluptate enim quam nulla quia. Quidem eligendi et modi quia minima. Atque facere illum veritatis qui necessitatibus cupiditate delectus.', 0, 1, '2018-01-24 08:59:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Possimus atque dolorum iusto in. Aut sed at in dolores. Ullam fugit quas fugiat omnis deserunt alias.', 0, 0, '2014-03-04 14:22:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Corporis consequuntur dolores et iure aliquid. Totam dolorem est animi laborum quia. Laborum hic possimus accusantium voluptatum sit repudiandae enim hic. Libero consequatur laudantium vero hic iure a et.', 1, 0, '2018-08-20 01:35:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Impedit neque quae itaque quas. Consectetur sequi officiis saepe dolorum earum sunt. Nisi itaque possimus quae est. Veritatis aperiam impedit fugiat in voluptatem animi nulla.', 1, 0, '2016-12-23 03:12:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Ut reiciendis laudantium quas perferendis. Omnis et quia magni et nobis. Pariatur mollitia asperiores labore excepturi incidunt odit dicta in. At aut cum sapiente id sunt accusantium.', 1, 1, '2015-06-05 08:16:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Ut quasi delectus ut dignissimos laboriosam numquam mollitia. Sed ad unde dolore non blanditiis itaque. Blanditiis rem officia enim repudiandae porro reiciendis porro.', 0, 1, '2020-12-09 22:30:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Beatae est amet est aspernatur eligendi dolores qui. Esse aut exercitationem odio rerum in. Illo reiciendis et rerum. Consequatur veniam accusantium dolores deleniti nostrum id.', 0, 0, '2014-05-14 06:16:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Explicabo vel ea dolor recusandae enim quia ex. Labore delectus eaque tempore et qui explicabo. Doloremque dolorem qui reiciendis magnam ut occaecati inventore.', 0, 1, '2017-01-07 08:22:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Ullam officiis quas occaecati modi dolorem. Dolorem repellat maiores dolorum. Itaque sapiente ex optio earum sapiente sed et. Aliquam minima dignissimos dolorem sunt quod.', 0, 1, '2013-08-05 20:15:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Tempore at earum velit sed officiis. Amet consequatur cum dicta dolorem sapiente animi illum. Maiores culpa aut expedita sint et perspiciatis impedit.', 0, 1, '2014-10-10 07:12:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Incidunt exercitationem ex tempore dolorum. Nisi quo et tenetur dolores ut ipsam eum. Ratione ea voluptatem unde tempora quam.', 1, 1, '2015-05-06 11:22:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Porro velit quis alias sint voluptatibus voluptatibus quae. Cum repellendus sed numquam provident a. Architecto ea perferendis rerum.', 1, 0, '2017-10-05 00:38:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Voluptatum impedit magni omnis in rerum commodi. Qui inventore debitis id nobis officia quibusdam sequi harum. Aperiam autem non incidunt adipisci cum.', 0, 0, '2017-09-09 08:04:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Aut et voluptatum deserunt qui ratione perspiciatis. Blanditiis placeat et cumque incidunt quo alias quibusdam libero. Quia mollitia rerum minus nostrum rerum ut doloremque. Dignissimos necessitatibus assumenda id et fugit non.', 1, 0, '2016-04-11 07:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Dolore et aut illum eaque tenetur. Velit sit alias nemo id est qui dolorum repudiandae. Vel dolorem est et maxime tempora.', 0, 0, '2019-10-31 13:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Et cum corporis ipsum provident atque. Aut cupiditate aliquam non aspernatur. Facere dolorem dolorem recusandae maiores qui dolore earum dolorum. Excepturi sit praesentium facere dignissimos aut. Incidunt quae neque est sed autem voluptatum architecto quas.', 1, 1, '2014-12-16 23:22:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Omnis consequatur facere molestiae aut. Nostrum debitis esse quae suscipit nesciunt.', 0, 1, '2015-07-19 02:53:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Sunt ea deserunt nam exercitationem cumque in ratione nam. Assumenda quis doloremque sed nobis est vel dolorum.', 0, 0, '2019-11-12 22:03:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Possimus est et accusantium ipsa est. Officiis dolores est corrupti voluptas est non quia consectetur. Magni quidem veniam amet ad. Nam minus quisquam vel id.', 1, 1, '2019-10-08 19:16:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Consequatur enim eius ipsam quas quisquam similique sint nihil. Esse officia quas explicabo minima aperiam. Numquam omnis blanditiis ad ea dolorum soluta. Quasi et omnis sit ipsum tempora quis non.', 0, 1, '2014-06-05 18:31:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'At odit quis itaque provident et facilis mollitia vitae. Sed aut dolorem quo ratione. Ipsa dolorem deserunt non. Quia illo id aliquid qui ut quibusdam ratione.', 0, 0, '2012-08-31 13:48:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Sunt ut aspernatur maxime. Nulla doloribus voluptatum reprehenderit itaque officiis aut.', 1, 0, '2016-02-16 07:48:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Numquam fuga corporis velit veritatis ea in. Illo labore consequatur hic aut. Alias dolore ut dolor aut molestiae earum voluptas. Et incidunt harum doloremque quae enim. Eum nihil et dolor quod aut.', 0, 1, '2012-01-12 18:58:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Ipsum aliquam atque quis voluptates. Similique qui delectus vel vel in dolor. Reiciendis sequi quis repellat voluptatem asperiores.', 1, 0, '2012-11-11 15:40:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Minima illo et quo. Id fugit consequatur corporis voluptas. Nobis nostrum numquam consequuntur repellendus eius.', 1, 1, '2019-12-05 15:47:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Ex id voluptatum velit consequuntur voluptatibus temporibus. Et non totam nulla tempore qui. Qui maiores ut facilis eius illum vitae enim accusamus.', 1, 1, '2011-08-20 19:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Et non consequatur vel sit enim cupiditate dolorem. Voluptatem blanditiis voluptatem adipisci. Voluptates natus temporibus et perspiciatis harum eum iure sit. Commodi recusandae doloremque veritatis officiis facere.', 1, 0, '2020-10-28 10:00:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Non cum dolorem sint similique beatae esse. Aspernatur nesciunt laudantium consequatur officia ullam. Laboriosam similique consectetur voluptatem quis.', 0, 0, '2015-07-11 21:40:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Quasi voluptates dolore sed saepe odit ipsum. Est molestias non quo. In qui adipisci asperiores cupiditate autem ut commodi. Ipsa sapiente recusandae voluptatum possimus aut.', 1, 1, '2020-10-06 10:14:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Labore odio laudantium quam qui officiis vero. Eaque labore in maxime explicabo. Error alias est eligendi ipsam reiciendis aspernatur odio ipsum.', 1, 1, '2015-04-09 15:41:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Iusto sapiente dolores aut rem saepe non laudantium ut. Aut quam natus eaque. Ut nulla veniam vero rem sit et.', 1, 0, '2013-04-29 09:43:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Quam provident dolorem possimus quisquam. Dignissimos enim eveniet ea. Quasi quis explicabo qui dolores et eos voluptatem. Molestiae laboriosam eius libero cumque voluptas eum.', 0, 0, '2016-10-12 03:32:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Maxime illum similique qui asperiores. Necessitatibus qui ut facere doloremque. Quo tempora praesentium asperiores nostrum quae quibusdam ut.', 0, 1, '2014-06-13 00:33:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Laborum mollitia exercitationem est consequatur exercitationem ut. Expedita ullam repellat quod est sequi. Voluptatem vitae quae quod alias vel rem. Enim aut atque quas et tempora. Sed molestiae provident iste in consequatur praesentium.', 0, 0, '2013-04-30 06:02:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Nihil commodi maiores facilis. Perferendis consectetur ipsum nulla eos facere esse dolor. Aliquid aspernatur vel doloremque itaque occaecati id. Porro exercitationem eos voluptatem vel.', 0, 0, '2019-12-18 01:01:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Qui quia quibusdam iure dolorem voluptatem ipsum sunt. Quidem rerum sunt illo. Enim dolore molestiae itaque molestiae sed.', 0, 0, '2019-11-28 18:00:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Molestias rem sed eum cumque et nihil sunt. Sapiente minima sit amet accusantium est dolores qui perspiciatis. Voluptatem quos sapiente illo excepturi eligendi quasi sint.', 1, 0, '2011-07-11 16:19:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Veniam amet autem similique neque odit dolor commodi. Temporibus et ut est eum ratione hic omnis. Rerum earum sint et saepe ratione accusamus.', 0, 0, '2020-08-08 10:35:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Et non enim vero est rerum est sed. Voluptas nihil debitis alias aperiam consequatur aliquid ducimus. Corrupti rerum et qui nihil eaque officia impedit.', 1, 1, '2018-09-20 16:41:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Sed molestiae ut debitis autem animi et vero. Eligendi facere qui eaque.', 0, 0, '2020-01-18 06:19:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Rerum quia praesentium ut. Sed error et ipsa necessitatibus error reprehenderit. Quas minima nemo et reprehenderit vel vel quia dolorem.', 0, 0, '2019-11-25 14:55:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Rem labore perferendis animi assumenda. Deserunt minus ab expedita sunt consectetur. Voluptas at iure quibusdam.', 0, 0, '2019-04-24 07:24:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Velit rerum est sed omnis ut. Consequatur vero porro quaerat non. Aliquam vel eum impedit laudantium perspiciatis. Libero ipsam ipsum ipsa quo beatae.', 1, 1, '2017-04-06 04:03:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Rerum sequi et hic excepturi. Veniam laudantium nesciunt sunt expedita. Aspernatur mollitia aut voluptate consequatur. Sint tempora ut iure iste tenetur.', 0, 0, '2020-07-07 00:07:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Ipsa harum vero et recusandae. Magnam quia facere sed suscipit. Dolorum quis beatae quo.', 0, 0, '2016-12-02 17:23:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Asperiores totam reiciendis eos molestiae in consequatur. Reiciendis voluptate nesciunt rerum minus voluptas eius nihil. Sint rerum beatae vero eveniet non vero.', 1, 1, '2021-06-07 03:10:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Impedit sunt impedit impedit deserunt quibusdam commodi. Atque voluptate ipsa qui natus quia repellat. Fuga sed labore aut qui veritatis eligendi delectus.', 1, 0, '2021-06-10 13:32:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Sapiente voluptatibus eveniet error omnis sed quasi. Esse eum dolores voluptate laboriosam occaecati. Qui consequatur corrupti sapiente ducimus reprehenderit illo. Molestiae magnam soluta sed illo error.', 1, 1, '2021-02-06 21:25:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Dicta et neque quia vero excepturi qui fugiat. Ut impedit quia ab architecto error voluptatum laborum.', 1, 1, '2012-03-24 00:05:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Magni vel minus quos amet quos. Est ullam nesciunt enim tempora et eius iure. Voluptas eos et deserunt quia sit est.', 0, 1, '2015-12-19 08:43:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Repellendus qui asperiores sed quia provident. Inventore iure autem temporibus corporis molestiae enim voluptatem voluptatibus. Qui assumenda aut doloremque hic quam.', 0, 0, '2011-08-13 16:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Ea odit facere amet nesciunt sed vel quia quibusdam. Quibusdam odio provident aliquid sed ut. Vel blanditiis in consequuntur. Ea pariatur praesentium ab quibusdam.', 1, 0, '2018-11-22 09:50:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Perferendis assumenda voluptatem rerum est consequatur voluptatem odio expedita. Quia illum suscipit aliquam velit nesciunt ut. Consequatur ex recusandae fuga adipisci expedita. Qui ullam rerum iure iste quasi nobis saepe.', 0, 0, '2011-08-07 08:20:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Animi perferendis qui quos voluptate et veniam. Odit quas veniam facilis consectetur laboriosam quod. Quas tempore vero aperiam.', 0, 0, '2012-08-28 23:29:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Sunt iure qui commodi voluptatem nobis suscipit voluptatibus tempora. Impedit voluptatem animi ut accusamus repellendus doloribus. Vel ducimus ea sapiente et rerum earum ut sit. Soluta ad quaerat iusto.', 0, 0, '2015-12-05 05:32:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Pariatur accusantium quas ipsam sed cum quis eligendi. Voluptatem sed sit quia delectus hic. Et enim quod enim aliquam id cumque sit illum.', 0, 1, '2017-06-21 20:16:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Ab adipisci eius et. Commodi quia nesciunt corporis magnam animi laboriosam. Maxime provident voluptatem consectetur. Ipsum incidunt voluptates iure sequi error nemo.', 0, 0, '2012-01-10 14:26:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Aut eum pariatur corrupti voluptatem. Reiciendis dolorem quos omnis qui placeat animi minus. Quaerat repudiandae et omnis architecto dolores eveniet sint.', 1, 0, '2017-11-04 00:59:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Enim sed voluptatem excepturi laudantium quo. Ut non facilis tenetur officia. Ex qui architecto placeat rerum vitae odio nisi.', 0, 1, '2016-12-30 15:50:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Tempore quidem qui inventore aut sit facere dolorum sint. Eos aut qui ex quasi consequatur repudiandae quia. Quod sunt ut distinctio architecto architecto quaerat illo.', 1, 0, '2020-08-11 14:12:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Sint quia qui possimus similique. At qui eos similique ratione et. Id possimus neque porro sed fuga explicabo. Ipsum omnis numquam assumenda molestiae quo qui.', 0, 1, '2014-06-26 16:05:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Est eum ea est quis. Est alias reiciendis corporis eum tempora. Pariatur officiis esse qui est sed facere eaque. Aut vel numquam corrupti et officia pariatur mollitia laborum. Illum sit repellat et magni perspiciatis molestiae eius.', 1, 1, '2017-12-26 19:09:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Molestiae ipsa odio saepe aut velit quaerat eos sed. Animi et nam odit quae corrupti esse veritatis. Minima quae explicabo a nesciunt aperiam.', 1, 0, '2011-10-17 16:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Quia ut facere sequi fugiat. Repellendus iure omnis odit numquam est animi omnis. Omnis omnis quia id consequatur tenetur cumque aut. Eligendi assumenda consequuntur qui quasi in adipisci et.', 0, 1, '2019-11-03 15:29:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Quia provident illo sunt accusamus a earum. Sint officia omnis molestiae. Qui consequatur dolorem est non et rerum totam. Quo qui omnis veniam nulla laborum. Aliquid non et officiis.', 1, 0, '2020-02-11 00:16:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Laudantium et aut at ipsum esse asperiores hic. Tempore nam dolorem impedit eveniet impedit. Rerum temporibus esse velit fugit et.', 0, 0, '2019-12-23 14:17:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Qui expedita sunt in optio aut cum quia. Non aliquid qui ea ullam quis. Consequatur vel cumque debitis adipisci commodi in.', 1, 0, '2018-04-25 14:28:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Ipsam aut deleniti ducimus voluptatibus quia. Non et debitis error dolor assumenda corporis libero architecto. Ab consectetur nostrum soluta. Numquam consequatur assumenda occaecati sapiente.', 1, 1, '2012-04-25 20:34:43');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на город проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (1, 'f', '2004-05-18', 49, '2016-09-20 12:53:03', '2020-11-26 23:18:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (2, 'm', '1996-12-01', 16, '2017-10-07 13:45:51', '2019-05-10 17:05:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (3, 'f', '2015-06-27', 81, '2011-10-03 16:45:35', '2018-10-27 02:20:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (4, 'f', '2013-07-05', 19, '2013-05-21 19:24:31', '2019-09-22 07:49:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (5, 'm', '2008-07-06', 100, '2017-10-13 19:48:35', '2015-02-14 10:43:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (6, 'm', '1992-09-24', 31, '2020-04-28 00:40:43', '2019-08-22 01:59:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (7, 'f', '2016-05-10', 95, '2021-02-20 05:35:26', '2020-02-20 05:18:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (8, 'f', '1977-12-02', 32, '2015-01-22 19:03:09', '2020-09-20 10:52:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (9, 'm', '1993-03-08', 25, '2019-05-22 01:53:06', '2012-02-13 16:57:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (10, 'f', '1984-04-14', 39, '2019-07-15 01:35:55', '2020-10-27 12:23:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (11, 'm', '2013-10-17', 8, '2013-04-24 04:27:12', '2014-12-05 11:08:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (12, 'm', '2009-06-07', 31, '2016-07-04 12:34:25', '2018-12-29 10:28:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (13, 'm', '2015-10-01', 63, '2019-05-19 07:52:27', '2019-02-07 05:58:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (14, 'f', '2002-05-20', 5, '2014-03-29 10:03:23', '2018-12-24 23:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (15, 'm', '1972-09-01', 23, '2021-04-20 12:50:18', '2020-10-05 19:48:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (16, 'm', '1983-01-07', 20, '2018-10-24 23:15:38', '2015-02-02 16:34:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (17, 'm', '1989-11-05', 72, '2015-08-09 08:26:35', '2015-04-03 20:55:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (18, 'f', '2005-11-06', 4, '2020-11-09 13:49:25', '2020-02-23 21:39:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (19, 'f', '2017-07-27', 81, '2019-08-04 21:13:56', '2016-04-20 09:42:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (20, 'f', '2021-05-09', 87, '2016-03-19 21:08:34', '2012-04-30 03:27:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (21, 'f', '2005-06-22', 44, '2013-02-06 02:11:16', '2020-04-19 16:23:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (22, 'm', '2014-12-28', 46, '2015-11-10 06:03:56', '2019-08-16 06:55:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (23, 'f', '2012-07-01', 37, '2011-10-05 15:42:12', '2019-05-30 01:03:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (24, 'f', '1982-08-19', 24, '2020-12-25 10:29:43', '2012-09-12 19:07:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (25, 'f', '2019-08-23', 41, '2018-12-19 12:49:06', '2016-08-27 10:43:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (26, 'm', '2005-12-05', 79, '2016-09-01 20:20:12', '2018-03-01 13:13:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (27, 'f', '2001-09-03', 42, '2016-04-24 06:36:38', '2013-04-30 02:03:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (28, 'f', '2007-08-05', 43, '2020-10-21 00:39:26', '2016-09-13 12:50:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (29, 'f', '1979-06-26', 81, '2018-02-13 22:43:01', '2020-05-05 02:27:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (30, 'f', '1972-12-04', 54, '2019-12-01 09:46:04', '2014-02-01 23:43:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (31, 'm', '1998-12-08', 99, '2017-09-13 16:52:44', '2014-10-03 22:57:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (32, 'm', '2014-01-16', 64, '2018-09-06 23:37:08', '2016-04-01 13:32:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (33, 'm', '1973-10-11', 18, '2015-01-03 21:09:07', '2011-09-28 23:29:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (34, 'f', '1990-12-15', 94, '2015-10-16 01:53:52', '2020-01-27 15:26:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (35, 'f', '1996-03-15', 91, '2015-10-17 15:58:38', '2013-12-17 02:16:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (36, 'm', '1973-12-15', 84, '2020-08-06 17:15:57', '2017-01-17 10:22:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (37, 'f', '1973-09-10', 66, '2020-12-22 18:32:39', '2011-11-16 13:37:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (38, 'm', '1974-01-20', 63, '2021-02-04 07:35:26', '2013-01-05 04:26:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (39, 'f', '2006-05-11', 86, '2020-10-22 23:57:51', '2020-02-28 13:05:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (40, 'm', '2019-05-21', 78, '2021-03-13 03:21:07', '2018-08-04 18:09:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (41, 'f', '1995-05-24', 13, '2021-05-17 15:56:24', '2019-12-13 05:18:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (42, 'm', '2003-01-07', 88, '2021-05-24 13:04:34', '2017-07-21 05:43:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (43, 'm', '1990-07-21', 42, '2018-09-23 02:43:00', '2021-06-20 00:00:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (44, 'f', '1978-07-10', 30, '2020-09-18 19:32:42', '2017-09-23 05:36:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (45, 'f', '1970-05-01', 30, '2013-02-24 08:21:55', '2013-06-21 20:17:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (46, 'f', '2004-02-11', 64, '2018-12-22 22:34:46', '2012-11-25 17:55:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (47, 'f', '1981-06-27', 59, '2018-02-23 05:55:15', '2020-10-11 02:36:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (48, 'm', '2009-12-02', 47, '2019-12-02 15:14:57', '2016-07-17 07:45:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (49, 'f', '2014-01-26', 77, '2015-10-19 13:40:44', '2016-04-19 17:20:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (50, 'f', '1986-06-08', 19, '2019-08-17 23:02:24', '2018-12-18 21:07:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (51, 'm', '2000-05-06', 52, '2013-12-08 22:13:12', '2016-02-18 22:56:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (52, 'm', '1978-04-06', 55, '2017-12-02 18:13:24', '2017-09-05 15:06:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (53, 'm', '1975-05-30', 11, '2014-04-15 19:36:59', '2013-02-12 09:38:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (54, 'f', '1980-04-25', 23, '2014-09-20 03:29:16', '2016-05-07 20:31:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (55, 'f', '1977-04-13', 14, '2018-12-21 17:21:26', '2017-01-06 13:55:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (56, 'm', '1988-08-21', 30, '2015-08-05 13:09:55', '2017-03-02 19:26:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (57, 'f', '1993-06-02', 3, '2018-05-06 05:28:45', '2020-06-12 08:46:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (58, 'm', '2013-02-27', 4, '2019-09-09 02:29:35', '2013-08-07 03:12:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (59, 'f', '1971-04-06', 86, '2013-11-22 19:49:21', '2020-03-05 10:07:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (60, 'f', '2013-07-27', 36, '2011-12-03 15:11:36', '2016-03-16 12:26:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (61, 'm', '1975-02-17', 67, '2019-12-23 23:19:37', '2020-11-29 23:13:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (62, 'm', '1987-09-07', 20, '2017-11-01 04:21:28', '2011-09-02 13:05:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (63, 'm', '1998-04-13', 13, '2017-10-29 21:25:59', '2019-05-16 12:31:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (64, 'f', '2015-04-27', 24, '2016-12-29 05:38:58', '2013-01-14 04:57:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (65, 'm', '2013-12-28', 33, '2019-07-07 05:09:07', '2020-04-18 15:30:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (66, 'm', '1976-09-17', 51, '2018-08-01 17:23:14', '2020-06-07 18:12:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (67, 'm', '2015-09-11', 31, '2011-09-08 13:19:20', '2012-10-01 15:48:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (68, 'f', '1988-02-22', 20, '2021-01-06 19:09:46', '2018-06-18 15:56:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (69, 'm', '2001-07-04', 56, '2018-02-11 23:56:54', '2016-06-13 15:57:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (70, 'f', '2011-10-31', 18, '2019-06-26 11:24:30', '2016-08-28 04:51:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (71, 'm', '2021-06-30', 19, '2011-07-20 02:48:10', '2021-01-12 08:09:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (72, 'm', '2017-09-22', 85, '2012-11-05 19:32:20', '2013-02-19 09:48:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (73, 'f', '1990-05-20', 35, '2021-04-27 06:22:12', '2014-11-12 19:08:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (74, 'm', '2004-06-18', 11, '2015-01-15 09:29:13', '2015-07-25 23:03:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (75, 'm', '2014-02-04', 85, '2017-05-15 17:51:20', '2020-02-29 16:25:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (76, 'f', '1996-03-25', 29, '2015-11-24 18:00:01', '2016-03-12 03:55:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (77, 'f', '1993-04-25', 32, '2016-02-10 19:48:13', '2014-05-19 08:47:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (78, 'm', '1984-04-25', 83, '2015-08-05 02:14:39', '2013-02-21 22:19:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (79, 'f', '1992-09-07', 51, '2012-05-12 00:01:36', '2016-05-20 08:02:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (80, 'f', '2016-09-28', 55, '2016-02-12 01:16:50', '2017-05-15 02:15:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (81, 'f', '1986-03-18', 100, '2012-02-27 11:50:50', '2014-02-26 21:11:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (82, 'm', '1979-07-19', 83, '2020-11-20 18:22:27', '2015-07-17 16:09:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (83, 'f', '2011-03-22', 58, '2013-03-28 12:26:23', '2012-02-12 14:56:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (84, 'm', '1978-03-17', 2, '2011-12-26 16:11:56', '2012-12-04 05:10:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (85, 'm', '1996-11-09', 23, '2015-08-29 07:18:52', '2012-09-06 09:25:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (86, 'f', '1999-03-28', 76, '2012-04-17 12:26:47', '2018-10-18 09:31:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (87, 'm', '2018-05-06', 85, '2018-11-20 12:20:16', '2013-01-24 01:06:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (88, 'm', '1972-09-02', 95, '2019-04-01 19:24:08', '2019-08-17 15:35:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (89, 'f', '2012-04-10', 96, '2019-09-12 06:47:00', '2016-04-07 13:29:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (90, 'm', '1975-12-18', 20, '2018-10-31 04:22:16', '2015-09-19 22:53:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (91, 'f', '2010-07-05', 74, '2020-04-12 14:54:51', '2014-04-08 09:15:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (92, 'm', '1980-06-30', 68, '2014-10-04 13:06:25', '2017-11-19 05:18:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (93, 'm', '1989-03-27', 7, '2015-07-18 09:16:30', '2019-09-02 17:22:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (94, 'f', '1985-04-15', 73, '2012-12-19 08:50:02', '2014-06-26 09:19:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (95, 'f', '1990-08-23', 39, '2018-03-19 09:54:37', '2016-09-05 03:30:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (96, 'f', '1981-11-02', 31, '2013-07-31 08:36:24', '2011-10-07 03:24:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (97, 'm', '2019-06-04', 88, '2013-06-09 14:52:08', '2016-02-10 17:07:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (98, 'm', '2005-02-24', 74, '2012-09-03 15:22:46', '2013-10-07 22:53:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (99, 'f', '1992-11-24', 74, '2017-09-19 09:49:14', '2016-12-31 10:31:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (100, 'f', '1994-04-30', 89, '2015-10-20 08:38:24', '2021-06-14 22:26:26');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Wellington', 'Kilback', 'leannon.gaylord@example.org', '920.821.4396x43487', '2019-10-06 09:05:14', '2016-08-16 15:14:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Fletcher', 'Heidenreich', 'heller.tatum@example.org', '421-325-7618x4459', '2020-09-03 09:42:18', '2016-06-17 05:56:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Vince', 'Klein', 'ghane@example.org', '728-782-6388', '2014-05-18 21:13:45', '2017-02-03 05:26:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Tianna', 'Haag', 'ada76@example.net', '+83(6)4361694455', '2014-11-15 23:32:57', '2019-09-23 17:36:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Jade', 'Torphy', 'fisher.dulce@example.org', '804.253.0158x190', '2019-11-24 15:12:08', '2020-01-02 15:33:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Ted', 'Mills', 'doris.stokes@example.net', '(012)431-1005x6877', '2014-10-13 12:59:31', '2018-04-05 09:56:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Brain', 'Beer', 'herzog.alana@example.net', '(523)460-6893', '2017-03-20 21:37:12', '2017-05-27 16:04:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Blake', 'Shields', 'jakob.fritsch@example.net', '+24(9)1059747759', '2015-10-01 00:28:29', '2020-05-12 20:18:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Alta', 'Mills', 'ahermann@example.org', '273-791-3615x6589', '2019-10-22 17:27:04', '2020-05-19 05:40:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Alessandro', 'Green', 'miller.caleb@example.net', '930-666-5681', '2014-09-23 08:20:10', '2021-02-21 07:27:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Elyse', 'Bergstrom', 'denesik.clovis@example.com', '1-487-688-1605x0357', '2012-11-26 17:18:30', '2016-12-27 07:19:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Hester', 'Pagac', 'mitchell.zack@example.com', '1-403-939-3126', '2020-10-16 23:10:49', '2012-11-06 10:48:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Ophelia', 'Boehm', 'frippin@example.org', '806-044-0400', '2013-06-07 23:56:35', '2017-09-17 03:27:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Mazie', 'Auer', 'johnston.abigail@example.net', '1-163-405-5790', '2012-07-28 16:05:12', '2014-12-03 16:18:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Jordi', 'Mayert', 'boyle.delpha@example.org', '09478719527', '2017-07-04 10:37:46', '2021-04-28 04:01:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Irving', 'Beier', 'napoleon.windler@example.com', '(989)310-5658', '2015-05-22 05:57:37', '2012-09-01 06:56:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Sheldon', 'Keebler', 'jana.metz@example.net', '08825163948', '2014-08-08 02:35:36', '2018-01-30 02:19:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Kamron', 'Mueller', 'stephon.ledner@example.net', '657.772.8390x517', '2017-11-30 00:44:53', '2016-01-19 05:39:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Lorenza', 'Botsford', 'jonas90@example.com', '731-192-9936x0875', '2016-05-14 20:01:10', '2019-07-31 22:29:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Yoshiko', 'Smitham', 'ivah.rosenbaum@example.com', '257-417-6880x6549', '2011-07-21 15:54:39', '2013-01-07 21:10:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Shea', 'Quigley', 'rae38@example.net', '965-456-8581x52347', '2014-01-08 06:12:12', '2012-07-11 02:42:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Kim', 'Lockman', 'nathanial.kassulke@example.net', '1-375-499-0459', '2017-04-08 17:56:29', '2014-05-13 15:19:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Deonte', 'Gutmann', 'dina11@example.com', '814.764.1049', '2017-08-17 18:04:28', '2016-12-19 10:05:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Vilma', 'Ryan', 'douglas.judge@example.org', '552.900.4905', '2018-06-20 04:13:36', '2020-05-23 11:06:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Rebeca', 'Schinner', 'geovanny.cormier@example.com', '1-010-895-2724x98434', '2019-07-28 12:07:05', '2019-05-20 18:33:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Carmel', 'Volkman', 'irussel@example.org', '312.396.1783x85814', '2015-08-05 18:29:03', '2019-05-23 01:21:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Isai', 'Dickens', 'mozelle.mclaughlin@example.com', '621-726-0355x302', '2019-09-04 01:14:59', '2018-11-27 10:36:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Austen', 'Price', 'alfredo.pagac@example.net', '263-328-4675x24523', '2012-10-21 18:23:47', '2013-03-03 17:13:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Garland', 'Keeling', 'fkiehn@example.com', '(181)034-5725', '2012-06-10 04:27:16', '2015-05-07 01:04:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Jairo', 'Simonis', 'debert@example.com', '(460)904-0143', '2017-03-27 03:07:16', '2020-10-09 16:17:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Verlie', 'Klocko', 'fbeer@example.org', '474-081-4425x00657', '2012-01-20 15:18:21', '2018-06-16 00:35:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Cristopher', 'Nader', 'lavina41@example.com', '429.851.5136x6148', '2013-10-26 08:37:12', '2014-12-22 07:13:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Myra', 'Koepp', 'dwindler@example.com', '153-307-8003', '2012-06-22 09:46:52', '2021-04-14 11:50:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Watson', 'Mann', 'halie41@example.com', '1-666-483-3811', '2020-07-19 06:54:26', '2011-10-03 11:29:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Kylee', 'Goldner', 'bo\'reilly@example.net', '1-199-058-4451', '2017-08-26 08:19:10', '2016-01-01 09:01:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Sister', 'Bogisich', 'kdach@example.com', '135.441.8883x85488', '2012-06-11 03:57:44', '2018-11-02 07:34:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Bernhard', 'Hills', 'leuschke.reymundo@example.net', '(952)485-2564x778', '2014-02-22 16:32:20', '2016-01-03 18:54:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Green', 'Schulist', 'darrel.volkman@example.org', '660-953-1141', '2016-06-25 23:26:49', '2014-06-24 16:41:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Allie', 'Bogan', 'moen.odessa@example.org', '304.439.2686x4537', '2012-06-15 16:04:35', '2015-03-05 13:58:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Isobel', 'Christiansen', 'tyrese.wisoky@example.com', '487.740.0128', '2019-06-07 00:00:29', '2015-12-30 02:29:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Kiarra', 'Kuphal', 'preichert@example.net', '423-871-9515', '2016-07-15 05:21:06', '2015-10-26 19:15:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Alexys', 'Nolan', 'hudson.zoie@example.org', '1-902-239-6960x2495', '2015-01-20 06:35:42', '2016-06-09 10:09:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Stevie', 'Morissette', 'nick.waelchi@example.com', '(911)529-0283x754', '2019-11-01 00:27:38', '2017-10-23 03:07:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Rigoberto', 'Trantow', 'jimmie.botsford@example.com', '04389632594', '2011-12-29 06:11:53', '2019-09-30 19:12:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Alexandra', 'Gutkowski', 'abagail35@example.net', '575-883-4524x48184', '2019-05-20 06:13:51', '2012-12-16 02:06:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Alessandra', 'Schimmel', 'wuckert.ines@example.org', '(956)792-9134x24635', '2016-10-29 16:03:44', '2015-04-21 07:27:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Dulce', 'Kerluke', 'qfeest@example.org', '653.154.1908x29048', '2015-04-05 06:08:07', '2015-05-08 07:24:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Angelita', 'Cruickshank', 'strosin.rod@example.net', '1-610-747-0571', '2014-02-21 16:03:29', '2012-11-16 01:18:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Rudolph', 'Dibbert', 'hagenes.wilber@example.net', '1-192-166-9529x829', '2014-01-24 04:08:38', '2019-05-28 21:55:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Darby', 'Larkin', 'conor67@example.com', '416.628.7406x92466', '2018-06-06 12:11:12', '2012-06-10 19:13:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Trevion', 'Feil', 'west.albin@example.org', '536.476.7415', '2015-05-01 10:14:40', '2013-05-15 16:27:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Wilhelm', 'Metz', 'reynolds.rod@example.com', '145-105-5895', '2017-05-09 04:17:54', '2011-11-06 02:56:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Vivianne', 'Swaniawski', 'mwilkinson@example.net', '074-285-3625', '2012-09-15 13:38:05', '2016-06-18 06:23:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Jennie', 'Kovacek', 'major.pfeffer@example.org', '(983)515-6604x255', '2020-08-22 09:07:41', '2017-09-08 09:53:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Emanuel', 'Swift', 'fgutmann@example.org', '(964)797-6848x545', '2011-08-18 19:08:48', '2017-01-26 11:08:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'General', 'Wilderman', 'harvey.madie@example.org', '+56(2)8713653069', '2017-01-05 04:39:12', '2019-08-05 05:11:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Gladyce', 'Bartoletti', 'hgoyette@example.net', '01400741053', '2013-11-08 18:16:52', '2013-02-08 08:36:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Morton', 'Smith', 'considine.vivian@example.org', '1-024-856-4353x89458', '2020-07-10 17:05:46', '2015-03-05 10:02:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Darby', 'Kulas', 'hilll.savanah@example.net', '(003)050-8101x545', '2019-07-20 08:53:18', '2014-10-25 16:25:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Noemi', 'Marks', 'bergstrom.martina@example.net', '461.965.9650x7453', '2015-02-15 06:26:38', '2015-04-16 22:47:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Juana', 'Emmerich', 'gorczany.ike@example.net', '889.636.0738', '2013-05-02 19:26:28', '2020-06-19 12:10:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Jennie', 'Dooley', 'irma.stanton@example.net', '951-186-8643', '2019-09-17 03:28:30', '2016-07-19 10:11:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Casimir', 'Heaney', 'merlin.sauer@example.net', '189-315-5074', '2019-01-16 01:06:08', '2013-06-27 20:32:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Harry', 'Nitzsche', 'samara26@example.org', '(807)552-5786x521', '2021-03-24 01:48:16', '2016-07-04 22:03:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Jake', 'Wolff', 'daugherty.yasmine@example.net', '1-114-658-6778x7888', '2014-09-10 21:57:40', '2016-10-19 22:49:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Elliot', 'Waelchi', 'paucek.forrest@example.com', '519.715.6382', '2016-11-24 09:13:28', '2015-09-07 18:48:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Mitchell', 'Jenkins', 'emmanuel34@example.net', '1-289-458-1425x0052', '2018-01-11 11:12:50', '2015-05-26 02:25:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Percival', 'Vandervort', 'coy.runte@example.com', '567.296.9208', '2017-02-28 17:10:28', '2020-07-24 08:04:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Forrest', 'Ziemann', 'kirk.grimes@example.com', '876-250-5566', '2014-07-14 21:54:39', '2012-06-03 06:15:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Kyla', 'Ankunding', 'parmstrong@example.net', '+07(7)0881198940', '2015-06-14 19:26:51', '2013-05-29 03:31:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Hassie', 'Rodriguez', 'quigley.cody@example.net', '(656)424-2815x0845', '2018-12-03 19:58:10', '2019-10-06 15:14:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Brannon', 'Leffler', 'heaven52@example.com', '448.302.0648x40489', '2017-06-24 11:44:55', '2021-01-30 00:35:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Amira', 'Spinka', 'white.maryam@example.net', '1-039-135-8011x418', '2015-10-20 17:27:01', '2016-01-06 20:23:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Billy', 'Hahn', 'jermaine66@example.com', '900-316-1519x751', '2020-07-12 11:33:59', '2014-05-07 04:39:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Breanna', 'Schuppe', 'rmohr@example.org', '+89(4)0898339333', '2017-08-15 09:36:16', '2015-03-07 05:00:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Trycia', 'Reinger', 'brady.kemmer@example.net', '(710)926-6370', '2020-03-20 19:49:10', '2016-11-04 13:40:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Everardo', 'Olson', 'jess20@example.org', '718.509.0828', '2013-02-22 06:57:59', '2015-02-10 03:00:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Art', 'Hodkiewicz', 'thompson.bertha@example.org', '(153)408-4568x15077', '2018-11-07 22:46:25', '2017-07-17 15:58:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Marlen', 'Kovacek', 'ublock@example.com', '779.777.7224x130', '2021-02-27 15:14:37', '2019-11-29 16:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Catalina', 'Langworth', 'janie.jacobson@example.net', '(811)113-0339x902', '2015-06-12 23:11:31', '2014-01-06 01:04:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Maverick', 'Metz', 'bednar.george@example.org', '005.133.5635x7716', '2015-11-27 19:28:43', '2018-12-03 03:23:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Chadd', 'Deckow', 'lucio.smith@example.org', '09291681297', '2017-03-04 10:00:07', '2015-06-23 01:55:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Mazie', 'Gislason', 'simone.lynch@example.com', '682.075.1808', '2017-10-17 08:46:28', '2016-04-09 21:13:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Etha', 'Hermann', 'coralie.purdy@example.org', '261.590.8325x451', '2016-04-07 01:48:15', '2013-12-04 08:52:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Kraig', 'Huel', 'ruecker.lori@example.com', '+89(6)2837904559', '2019-01-19 11:09:55', '2019-05-10 10:55:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Casper', 'DuBuque', 'dolly.reichel@example.org', '033.877.9532x51068', '2018-08-12 19:06:55', '2013-09-17 07:10:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Leann', 'Pfeffer', 'xrath@example.org', '430.790.6465', '2013-11-28 19:13:28', '2016-06-15 17:18:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Roel', 'Waters', 'lynch.kylee@example.com', '524-317-2448x050', '2019-03-02 07:54:52', '2012-05-29 18:57:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Stuart', 'Bins', 'qdooley@example.com', '894.536.4500x0001', '2016-03-19 07:41:27', '2013-06-19 00:55:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Cassandre', 'Baumbach', 'von.susan@example.org', '929.069.1231x5128', '2020-03-24 15:26:47', '2015-07-22 11:43:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Laurianne', 'Farrell', 'zoie32@example.com', '919-249-2862x84630', '2014-02-01 08:30:30', '2016-05-19 03:53:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Brant', 'Pagac', 'lauren98@example.org', '934.235.1309', '2013-07-08 10:48:32', '2011-09-27 22:39:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Alberta', 'Eichmann', 'bradley.gutkowski@example.net', '09835071502', '2018-09-24 08:33:34', '2021-03-20 15:58:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Harmony', 'Padberg', 'kleffler@example.net', '886.220.7514', '2018-08-11 09:49:04', '2011-10-07 21:44:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Brendan', 'Kiehn', 'vratke@example.net', '367-631-9996', '2019-05-05 17:04:21', '2017-03-03 00:30:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Jacques', 'Olson', 'dortha03@example.com', '00999114009', '2012-12-09 15:27:26', '2012-12-31 17:51:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Krystel', 'Frami', 'jmoore@example.com', '961.489.4303', '2015-05-05 15:27:16', '2017-08-07 00:44:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Karine', 'Kunde', 'kaci77@example.net', '1-751-823-2316x0302', '2019-07-02 03:52:46', '2014-07-15 06:59:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Alta', 'Lind', 'xwiza@example.net', '(420)075-5668x474', '2019-04-18 13:42:05', '2018-01-08 08:36:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Joany', 'Green', 'vito.jaskolski@example.org', '1-985-764-8667x20319', '2012-08-23 20:32:03', '2017-01-12 03:11:45');


