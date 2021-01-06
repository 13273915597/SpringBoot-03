package com.yuntu.demo.controller;

import com.yuntu.demo.pojo.Sex;
import com.yuntu.demo.service.SexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SexController {
    @Autowired
    private SexService service;

    @RequestMapping("/index.html")
    public String index(){
        return "index";
    }


    @RequestMapping("/all")
    @ResponseBody
    public List<Sex> findAll(Model model){
        List<Sex> s = service.all();
        return s;
    }

    @RequestMapping("/add.html")
    public String add(){
        return "add";
    }

    @RequestMapping("/add")
    public String add(String sex){
        Sex sex1 = new Sex(sex);
        if (service.add(sex1)){
            return "index";
        }else {
            return "redirect:add.html";

        }
    }

    @RequestMapping("/del/{id}")
    @ResponseBody
    public Boolean delProduct(@PathVariable String id){
        return service.del(Integer.parseInt(id));
    }

    @RequestMapping("/update.html")
    public String getOne(int id,Model model){
        model.addAttribute("id",id);
        return "upd";
    }

    @RequestMapping("/get1")
    @ResponseBody
    public Sex getOne(int id){
        return service.getOne(id);
    }

    @RequestMapping("/update")
    public String updProduct(int id,String sex){
        Sex sex1 = new Sex(id,sex);
        if (service.upd(sex1)){
            return "index";
        }else {
            return "redirect:update.html?id="+id;
        }
    }
}
