package com.javaex.controller;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @RequestMapping("/join")
    public String join(@ModelAttribute UserVo userVo) {
        boolean result = userService.join(userVo);
        if(result) { //가입에 성공하면
            return "user/joinSuccess";
        } else { // 가입에 실패하면
            return "user/joinForm";
        }

    }

    @RequestMapping("/loginForm")
    public String loginForm() {
        return "user/loginForm";
    }

    @RequestMapping("/login")
    public String login(@ModelAttribute UserVo userVo, HttpSession session) {
        UserVo authUser = userService.login(userVo);
        if(authUser != null) { //로그인 성공
            session.setAttribute("authUser",authUser);
            return "redirect:/";
        } else { //로그인 실패
            return "redirect:loginForm?loginResult=fail";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("authUser");
        session.invalidate();

        return "redirect:/";
    }
}
