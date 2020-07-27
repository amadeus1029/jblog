package com.javaex.vo;

public class SearchVo {
    private String keyword, option;
    private int page, pageView;

    public SearchVo() {
    }

    public SearchVo(String keyword, String option, int page, int pageView) {
        this.keyword = keyword;
        this.option = option;
        this.page = page;
        this.pageView = pageView;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageView() {
        return pageView;
    }

    public void setPageView(int pageView) {
        this.pageView = pageView;
    }

    @Override
    public String toString() {
        return "SearchVo{" +
                "keyword='" + keyword + '\'' +
                ", option='" + option + '\'' +
                ", page=" + page +
                ", pageView=" + pageView +
                '}';
    }
}
