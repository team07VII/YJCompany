package com.yanjiang.researchRA.test;

import com.yanjiang.researchRA.domain.RdmsProjBase;
import com.yanjiang.researchRA.mapper.RdmsProjBaseMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by dllo on 18/2/6.
 */
public class RdmsProjBaseTest {


    private ApplicationContext context;
    private RdmsProjBaseMapper rdmsProjBaseMapper;

    public void projBaseService(){

//        RdmsProjBase projBase = new RdmsProjBase(CommonUtils.uuid(), "业务申报流程");

    }
    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath:spring-config.xml");
        rdmsProjBaseMapper = context.getBean(RdmsProjBaseMapper.class);


    }
//    @Test
//    public void insert(){
//        RdmsProjBase rdmsProjBase = new RdmsProjBase();
//        rdmsProjBase.setProjName("阳江");
//        int insert = rdmsProjBaseMapper.insert(rdmsProjBase);
//        System.out.println(insert);
//
//    }

}
