package com.javaex.dao;

import com.javaex.vo.PostVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class PostDao {

    @Autowired
    private SqlSession sqlSession;

    public void insert(PostVo postVo) {
        sqlSession.insert("post.insert",postVo);
    }

    public List<PostVo> getList(int cateNo, int pageView, int page) {

        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("cateNo", cateNo);
        map.put("pageView", pageView);
        map.put("page", page);

        return sqlSession.selectList("post.selectList", map);
    }

    public int getCount(int cateNo) {
        return sqlSession.selectOne("post.getCount", cateNo);
    }

    public PostVo getPost(int postNo) {
        return sqlSession.selectOne("post.selectOne", postNo);
    }
}
