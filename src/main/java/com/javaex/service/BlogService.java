package com.javaex.service;

import com.javaex.dao.BlogDao;
import com.javaex.dao.CategoryDao;
import com.javaex.dao.CommentDao;
import com.javaex.dao.PostDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.CommentVo;
import com.javaex.vo.PostVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class BlogService {
    @Autowired
    private BlogDao blogDao;

    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private PostDao postDao;

    @Autowired
    private CommentDao commentDao;

    public BlogVo getBlog(String id) {
        return blogDao.getBlog(id);
    }

    public List<CategoryVo> getCategory(String id) {
        return categoryDao.getList(id);
    }

    public void modifyBlog(BlogVo blogVo, MultipartFile file) {

        if(!file.isEmpty()) { //파일을 첨부했을 때만

            //저장 경로
            String saveDir = "/Users/apolion/work/upload";

            //파일 이름
            String orgName = file.getOriginalFilename();

            //파일 확장자
            String exName = orgName.substring(orgName.lastIndexOf("."));

            //저장파일 이름
            String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

            //파일경로
            String filePath = saveDir + "/" + saveName;

            //파일 서버에 복사
            try {
                byte[] fileData = file.getBytes();
                OutputStream out = new FileOutputStream(filePath);
                BufferedOutputStream bufferedOut = new BufferedOutputStream(out);

                bufferedOut.write(fileData);
                bufferedOut.close();

            } catch (IOException e) {
                e.printStackTrace();
            }
            blogVo.setLogoFile(saveName);
        }
        blogDao.update(blogVo);
    }

    public CategoryVo addCategory(CategoryVo categoryVo) {
        categoryDao.insertSelectKey(categoryVo);
        int cateNo = categoryVo.getCateNo();
        return categoryDao.selectByNo(cateNo);
    }

    public boolean deleteCategory(CategoryVo categoryVo) {
        return categoryDao.delete(categoryVo) == 1;
    }

    public void writePost(PostVo postVo) {
        postDao.insert(postVo);
    }

    public Map<String, Object> getPostPaging(int cateNo, int page) {
        int pageView = 5; //한 페이지에 표시할 게시물 수
        int pageNum = 5; //화면 하단에 표시할 페이지 최대 갯수
        int currPage = page > 0 ? page : 1;
        int totalPage = (postDao.getCount(cateNo)-1)/pageView + 1;
        int _currPage = (currPage - 1)/pageNum;
        int beginPage = _currPage*pageNum+1;
        int endPage = Math.min(_currPage * pageNum + pageNum, totalPage);

        List<PostVo> postList = postDao.getList(cateNo, pageView, page);

        Map<String, Object> postPaging = new HashMap<String, Object>();

        postPaging.put("cateNo", cateNo);
        postPaging.put("pageNum", pageNum);
        postPaging.put("currPage", currPage);
        postPaging.put("totalPage", totalPage);
        postPaging.put("beginPage", beginPage);
        postPaging.put("endPage", endPage);
        postPaging.put("postList", postList);

        return postPaging;
    }

    public PostVo getPost(int postNo) {
        return postDao.getPost(postNo);
    }

    public List<CommentVo> getCommentList(int postNo) {
        return commentDao.getList(postNo);
    }

    public CommentVo addComment(CommentVo commentVo) {
        commentDao.insertSelectKey(commentVo);
        int cmtNo = commentVo.getCmtNo();
        return commentDao.selectByNo(cmtNo);
    }

    public boolean deleteComment(CommentVo commentVo) {
        return commentDao.delete(commentVo) == 1;
    }
}
