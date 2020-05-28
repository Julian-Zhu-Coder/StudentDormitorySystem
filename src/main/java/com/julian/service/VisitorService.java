package com.julian.service;

import com.julian.domain.PageInfo;
import com.julian.domain.Visitor;

import java.util.List;

/**
 * @program: dormitorySystem
 * @description: 访客
 * @author: julian
 * @create: 2020-05-25 12:13
 **/
public interface VisitorService {
    //分页查询
    public PageInfo<Visitor> findPageInfo(String v_name, Integer v_phone, Integer pageIndex, Integer pageSize);
    public int addVisitor(Visitor visitor);   //添加访客信息
    public List<Visitor> getAll();
}
