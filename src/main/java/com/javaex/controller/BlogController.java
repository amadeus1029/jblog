package com.javaex.controller;

import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class BlogController {

    @Autowired
    private BlogService blogService;


    @RequestMapping("/{id}")
    public String getBlog(@PathVariable("id") String id,
                          Model model,
                          @ModelAttribute PostVo postVo,
                          @RequestParam(value = "page", defaultValue = "1") int page
                          ) {
        BlogVo blogVo = blogService.getBlog(id);
        if(blogVo != null) { //실제로 존재하는 블로그인지 체크
            model.addAttribute("blogVo", blogVo);

            //카테고리 리스트 보내주기
            List<CategoryVo> cateList = blogService.getCategory(id);
            model.addAttribute("cateList", cateList);

            //포스트리스트 보내주기
            int cateNo = postVo.getCateNo();
            if(cateNo == 0 && cateList.size() != 0) { //카테고리 번호 없으면 해당 블로그 최상단 카테고리
                cateNo = cateList.get(0).getCateNo();
            }

            Map<String, Object> postPaging = blogService.getPostPaging(cateNo,page);
            model.addAttribute("post",postPaging);

            //포스트 보내주기
            int postNo = postVo.getPostNo();
            List<PostVo> postList = (List)postPaging.get("postList");
            if(postNo == 0 && postList.size() != 0 ) { //포스트 번호 없으면 해당 카테고리 가장 최신글
                postNo = postList.get(0).getPostNo();
            }
            postVo = blogService.getPost(postNo);
            model.addAttribute("postVo",postVo);

            return "blog/blog-main";
        } else {
            return "error/403";
        }

    }
}
