package com.yuntu.demo.dao;

import com.yuntu.demo.pojo.Sex;
import org.apache.ibatis.annotations.*;

import java.util.List;
@Mapper
public interface SexDao {
    //查询
    @Select("select id,sex from sex")
    List<Sex> all();

    //添加
    @Insert("insert into sex(sex) value(#{sex})")
    boolean add(Sex sex);
    //删除
    @Delete("delete from sex where id = #{id}")
    boolean del(int id);
    //查询单个
    @Select("select * from sex where id= #{id}")
    Sex getOne(int id);
    //修改
    @Update("update sex set sex = #{sex} where id= #{id}")
    boolean upd(Sex sex);
}
