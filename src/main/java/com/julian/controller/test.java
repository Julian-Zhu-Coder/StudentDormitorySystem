package com.julian.controller;

import com.julian.domain.Admin;
import com.julian.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 独立测试Springmvc
 */
@Controller
@RequestMapping("/test")
public class test {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/springmvc")
    public String testSpringmvc(){
        System.out.println("testSpringmvc执行力。。。");
        return "success";
    }

    @RequestMapping("/findAllAccount")
    public ModelAndView findAllAccount(){
        System.out.println("testSSM执行力。。。");
        List<Admin> admins = adminService.getAll();
        for (Admin admin : admins){
            System.out.println(admin);
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("admins",admins);
        mv.setViewName("success");
        return mv;
    }

}
