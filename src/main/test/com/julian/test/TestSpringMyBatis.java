package com.julian.test;


import com.julian.dao.AdminDao;
import com.julian.domain.Admin;
import com.julian.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class TestSpringMyBatis {

    @Autowired
    private AdminService adminService;

    /**
     * 测试查询所有
     */
    @Test
    public void testFindAll() {
        List list = adminService.getAll();
        System.out.println(list);
    }

    @Test
    public void testSave() {
        Admin admin = new Admin();
        admin.setA_username("testSave2");
        admin.setA_password("123");
        adminService.addAdmin(admin);
    }
}
