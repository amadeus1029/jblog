package com.javaex.controller;

import com.javaex.service.BlogService;
import com.javaex.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private BlogService blogService;

    @RequestMapping("/")
    public String Main() {
        return "main/index";
    }

    @RequestMapping("/search")
    public String search(@ModelAttribute SearchVo searchVo,
                         Model model) {
        if(!searchVo.getKeyword().equals("")) { //아무것도 입력하지 않으면 서치하지 않음
            Map<String, Object> blogPaging = blogService.getBlogPaging(searchVo);
            model.addAttribute("blog",blogPaging);
        }
        return "main/index";
    }
}
