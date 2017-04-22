package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.Seckill;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by JavaDev on 2017/4/22.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SeckillDaoTest {
    @Resource
    private SeckillDao seckillDao;

    @Test
    public void testQueryById() throws Exception{
        long id = 1000;
        Seckill seckill = seckillDao.queryById(id);
        System.out.println(seckill.getName());
        System.out.println(seckill);
    }

    public void testQueryAll() throws Exception{
        long id = 1000;
        Seckill seckill = seckillDao.queryById(id);
        System.out.println();
    }

    public void testReduceNumber() throws Exception{
        long id = 1000;
        Seckill seckill = seckillDao.queryById(id);
        System.out.println();
    }

}
