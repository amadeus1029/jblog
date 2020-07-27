package com.javaex.controller;

import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;
import com.javaex.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/{id}/admin")
public class AdminController {

    @Autowired
    private BlogService blogService;

    @RequestMapping("/basic")
    public String basic(@PathVariable("id") String id,
                        HttpSession session,
                        Model model) {
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        if(id.equals(authUser.getId())) { //블로그 admin 검증
            BlogVo blogVo = blogService.getBlog(id);
            model.addAttribute("blogVo", blogVo);
            return "blog/admin/blog-admin-basic";
        } else { //통과 못하면
            return "redirect:/";
        }
    }

    @RequestMapping("/modifyBasic")
    public String modifyBasic(@PathVariable("id") String id,
                              HttpSession session,
                              @ModelAttribute BlogVo blogVo,
                              MultipartFile file) {
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        if(id.equals(authUser.getId())) { //블로그 admin 검증
            blogVo.setId(authUser.getId());
            blogService.modifyBlog(blogVo, file);
            return "redirect:basic";
        } else { //통과 못하면
            return "redirect:/";
        }
    }

    @RequestMapping("/cate")
    public String cate(@PathVariable("id") String id,
                       HttpSession session,
                       Model model) {
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        if(id.equals(authUser.getId())) { //블로그 admin 검증
            BlogVo blogVo = blogService.getBlog(id);
            model.addAttribute("blogVo", blogVo);
            return "blog/admin/blog-admin-cate";
        } else { //통과 못하면
            return "redirect:/";
        }
    }

    @ResponseBody
    @RequestMapping("/cateList")
    public List<CategoryVo> cateList(@PathVariable("id") String id) {
        System.out.println(blogService.getCategory(id));
        return blogService.getCategory(id);
    }

    @ResponseBody
    @RequestMapping("/addCategory")
    public CategoryVo addCategory(@RequestBody CategoryVo categoryVo,
                                  HttpSession session) {
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        categoryVo.setId(authUser.getId());
        return blogService.addCategory(categoryVo);
    }

    @ResponseBody
    @RequestMapping("/deleteCategory")
    public boolean deleteCategory(@RequestBody CategoryVo categoryVo) {
        return blogService.deleteCategory(categoryVo);
    }

    @RequestMapping("/writeForm")
    public String writeForm(@PathVariable("id") String id,
                            HttpSession session,
                            Model model) {
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        if(id.equals(authUser.getId())) { //블로그 admin 검증
            BlogVo blogVo = blogService.getBlog(id);
            model.addAttribute("blogVo", blogVo);
            List<CategoryVo> cateList = blogService.getCategory(id);
            model.addAttribute("cateList",cateList);
            return "blog/admin/blog-admin-write";
        } else { //통과 못하면
            return "redirect:/";
        }
    }

    @RequestMapping("/write")
    public String write(@PathVariable("id") String id,
                        @ModelAttribute PostVo postVo,
                        HttpSession session) {
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        if(id.equals(authUser.getId())) { //블로그 admin 검증
            blogService.writePost(postVo);
            return "redirect:writeForm";
        } else { //통과 못하면
            return "redirect:/";
        }
    }

}
