package com.yuntu.demo.service;

import com.yuntu.demo.pojo.Sex;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SexService {

    List<Sex> all();
    //添加
    boolean add(Sex sex);
    //删除
    boolean del(int id);
    //查询单个
    Sex getOne(int id);
    //修改
    boolean upd(Sex sex);
}
