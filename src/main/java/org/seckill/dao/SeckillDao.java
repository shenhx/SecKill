package org.seckill.dao;

import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by JavaDev on 2017/4/22.
 */
public interface SeckillDao {
    /**
     * 减库存
     * @param seckillId
     * @param killTime
     * @return
     */
    int reduceNumber(long seckillId, Date killTime);

    /**
     * 根据Id查询秒杀单
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * 根据偏移量获取秒杀商品
     * @param offset
     * @param limit
     * @return
     */
    List<Seckill> queryAll(int offset,int limit);
}
