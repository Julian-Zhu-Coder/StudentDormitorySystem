package com.julian.test;

import com.julian.dao.AdminDao;
import com.julian.domain.Admin;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.InputStream;
import java.util.List;

public class TestMyBatis {

    /**
     * 测试查询   * @param args   * @throws Exception
     */
    @Test
    public void testFindAll() throws Exception {
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        SqlSession session = factory.openSession();
        AdminDao aDao = session.getMapper(AdminDao.class);
        List<Admin> list = aDao.getAll();
        System.out.println(list);
        session.close();
        in.close();
    }

    /**
     * 测试保存   * @param args   * @throws Exception
     */
    @Test
    public void testSave() throws Exception {
        Admin admin = new Admin();
        admin.setA_username("testSave");
        admin.setA_password("1234");
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        SqlSession session = factory.openSession();
        AdminDao aDao = session.getMapper(AdminDao.class);
        aDao.addAdmin(admin);
        session.commit();
        session.close();
        in.close();
    }


}
