创建搜索统计表

CREATE TABLE `sph_search_counter` (
  `counter_id` int(11) NOT NULL,
  `max_update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`counter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `fm_search` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '名称',
  `alias` varchar(40) NOT NULL DEFAULT '' COMMENT '别名',
  `channel` varchar(40) NOT NULL DEFAULT '' COMMENT '频道',
  `director` varchar(40) NOT NULL DEFAULT '' COMMENT '导演',
  `actor` varchar(40) NOT NULL DEFAULT '' COMMENT '演员',
  `category` varchar(40) NOT NULL DEFAULT '' COMMENT '分类',
  `tag` varchar(40) NOT NULL DEFAULT '' COMMENT '标签',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '分',
  `disable` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '禁用',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='搜索';