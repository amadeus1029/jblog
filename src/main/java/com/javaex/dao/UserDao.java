package com.javaex.dao;

import com.javaex.vo.UserVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

    @Autowired
    private SqlSession sqlSession;

    public int join(UserVo userVo) {
        return sqlSession.insert("user.insert",userVo);
    }

    public UserVo login(UserVo userVo) {
        return sqlSession.selectOne("user.selectUser",userVo);
    }
}
