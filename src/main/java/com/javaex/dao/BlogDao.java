package com.javaex.dao;

import com.javaex.vo.BlogVo;
import com.javaex.vo.UserVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDao {

    @Autowired
    private SqlSession sqlSession;

    public void insert(UserVo userVo) {
        sqlSession.insert("blog.insert", userVo);
    }

    public BlogVo getBlog(String id) {
        return sqlSession.selectOne("blog.select", id);
    }

    public void update(BlogVo blogVo) {
        sqlSession.update("blog.update", blogVo);
    }
}
