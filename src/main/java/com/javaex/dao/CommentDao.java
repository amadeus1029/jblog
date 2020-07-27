package com.javaex.dao;

import com.javaex.vo.CommentVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommentDao {

    @Autowired
    private SqlSession sqlSession;

    public List<CommentVo> getList(int postNo) {
        return sqlSession.selectList("comment.selectList",postNo);
    }

    public void insertSelectKey(CommentVo commentVo) {
        sqlSession.insert("comment.insertSelectKey",commentVo);
    }

    public CommentVo selectByNo(int cmtNo) {
        return sqlSession.selectOne("comment.selectByNo", cmtNo);
    }

    public int delete(CommentVo commentVo) {
        return sqlSession.delete("comment.delete", commentVo);
    }
}
