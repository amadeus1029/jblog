package com.javaex.service;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CategoryDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.SearchVo;
import com.javaex.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public Map<String, Object> getBlogPaging(SearchVo searchVo) {
        int pageView = 5; //한 페이지에 표시할 게시물 수
        int pageNum = 5; //화면 하단에 표시할 페이지 최대 갯수
        int currPage = searchVo.getPage() > 0 ? searchVo.getPage() : 1;
        int totalPage = (blogDao.getCount(searchVo)-1)/pageView + 1;
        int _currPage = (currPage - 1)/pageNum;
        int beginPage = _currPage*pageNum+1;
        int endPage = Math.min(_currPage * pageNum + pageNum, totalPage);

        searchVo.setPage(currPage);
        searchVo.setPageView(pageView);
        List<BlogVo> blogList = blogDao.getList(searchVo);

        Map<String, Object> blogPaging = new HashMap<String, Object>();

        blogPaging.put("searchVo", searchVo);
        blogPaging.put("pageNum", pageNum);
        blogPaging.put("currPage", currPage);
        blogPaging.put("totalPage", totalPage);
        blogPaging.put("beginPage", beginPage);
        blogPaging.put("endPage", endPage);
        blogPaging.put("blogList", blogList);

        return blogPaging;
    }
}
