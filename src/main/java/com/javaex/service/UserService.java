package com.javaex.service;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CategoryDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private BlogDao blogDao;
    @Autowired
    private CategoryDao categoryDao;

    public boolean join(UserVo userVo) {
        boolean result = userDao.join(userVo) == 1;
        if(result) { //가입에 성공하면
            blogDao.insert(userVo); //블로그 생성
            categoryDao.insert(userVo.getId()); //기본카테고리 생성
        }
        return result;
    }

    public UserVo login(UserVo userVo) {
        return userDao.login(userVo);
    }

    public boolean idChk(UserVo userVo) {
        return userDao.idChk(userVo) == null;
    }
}
