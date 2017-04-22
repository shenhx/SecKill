-- 创建秒杀系统数据库脚本
-- 创建数据库seckill
CREATE  DATABASE seckill;
-- 转到seckill
USE seckill;

-- 创建秒杀表
CREATE  TABLE seckill(
  `seckill_id` BIGINT not null AUTO_INCREMENT COMMENT '商品库存id',
  `name` VARCHAR(120) NOT NULL COMMENT '商品名称',
  `number` int NOT NULL COMMENT '库存数量',
  `start_time` TIMESTAMP NOT NULL COMMENT '秒杀开启时间',
  `end_time` TIMESTAMP NOT NULL COMMENT '秒杀结束时间',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
) ENGINE =InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=UTF8 COMMENT '秒杀库存表';

-- 初始化库存数据
insert into seckill(name,number,start_time,end_time)
  values
('1元抢新娘',100,'2017-04-22 00:00:00','2017-04-22 00:00:00'),
('10元抢Iphone 7',100,'2017-04-22 00:00:00','2017-04-22 00:00:00'),
('2元娶媳妇',100,'2017-04-22 00:00:00','2017-04-22 00:00:00'),
('3元喝奶茶',100,'2017-04-22 00:00:00','2017-04-22 00:00:00');

-- 秒杀成功明细表
CREATE  TABLE success_killd(
  `seckill_id` BIGINT NOT NULL COMMENT '',
  `user_phone` BIGINT NOT NULL COMMENT '',
  `state` TINYINT NOT NULL COMMENT '',
  `create_time` TIMESTAMP NOT NULL COMMENT '',
  PRIMARY KEY(seckill_id,user_phone),
  key idx_create_time(create_time)
)ENGINE =InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=UTF8 COMMENT '秒杀陈功明细表';

