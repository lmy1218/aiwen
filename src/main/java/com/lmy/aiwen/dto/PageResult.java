package com.lmy.aiwen.dto;
/**
 * @Project attendance
 * @Package com.lmy.dto
 * @author Administrator
 * @date 2020/6/18 8:30
 * @version V1.0
 */

import java.util.List;

/**
 * @author Administrator
 * @ClassName PageResult
 * @Description 分页返回接口
 * @date 2020/6/18 8:30
 **/

public class PageResult<E> {
    // 当前页数
    private Integer currPage;
    // 总页数
    private Integer totalPage;
    // 总条数
    private Long totalCount;
    // 每页显示条数
    private Integer pageSize;
    // 当前页数据
    private List<E> list;

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List<E> getList() {
        return list;
    }

    public void setList(List<E> list) {
        this.list = list;
    }
}
