package com.lmy.aiwen.enttity;

import java.io.Serializable;

/**
 * (TbNav)实体类
 *
 * @author makejava
 * @since 2020-08-06 16:47:58
 */
public class TbNav implements Serializable {
    private static final long serialVersionUID = 806423054187609835L;

    private Integer id;

    private String title;

    private String url;

    private Integer priority;

    private Long createTime;

    private Long modifiedTime;

    private Integer status;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public Long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    public Long getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Long modifiedTime) {
        this.modifiedTime = modifiedTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}