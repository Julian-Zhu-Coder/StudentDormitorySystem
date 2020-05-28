package com.julian.test;


import com.julian.domain.Admin;
import com.julian.service.AdminService;
import com.julian.service.impl.AdminServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestSpring {

    @Test
    public void test01(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminService as = ac.getBean("adminService", AdminService.class);
        as.testSpring();
    }


}
