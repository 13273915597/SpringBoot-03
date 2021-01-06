package com.yuntu.demo.service.Impl;

import com.yuntu.demo.dao.SexDao;
import com.yuntu.demo.pojo.Sex;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("service")
public class SexService implements com.yuntu.demo.service.SexService {
@Resource
    private SexDao sexDao;

    @Override
    public List<Sex> all() {
        return sexDao.all();
    }

    @Override
    public boolean add(Sex sex) {
        if (sexDao.add(sex)){
            return true;
        }
        return false;
    }

    @Override
    public boolean del(int id) {
        if (sexDao.del(id)){
            return true;
        }
        return false;
    }

    @Override
    public Sex getOne(int id) {
        return sexDao.getOne(id);
    }

    @Override
    public boolean upd(Sex sex) {
        if (sexDao.upd(sex)){
            return true;
        }
        return false;
    }
}
