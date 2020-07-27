package com.javaex.dao;

import com.javaex.vo.CategoryVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDao {

    @Autowired
    private SqlSession sqlSession;

    public void insert(String id) {
        sqlSession.insert("category.insertById", id);
    }

    public void insertSelectKey(CategoryVo categoryVo) {
        sqlSession.insert("category.insertSelectKey",categoryVo);
    }

    public CategoryVo selectByNo(int cateNo) {
        return sqlSession.selectOne("category.selectByNo", cateNo);
    }

    public List<CategoryVo> getList(String id) {
        return sqlSession.selectList("category.selectList", id);
    }

    public int delete(CategoryVo categoryVo) {
        return sqlSession.delete("category.delete",categoryVo);
    }
}
