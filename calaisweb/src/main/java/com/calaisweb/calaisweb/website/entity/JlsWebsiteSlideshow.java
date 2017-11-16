package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jls_website_slideshow")
public class JlsWebsiteSlideshow implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 标题
     */
    @Column(name = "title_")
    private String title;

    /**
     * 图片路径
     */
    @Column(name = "imgpath_")
    private String imgpath;

    /**
     * 对应链接
     */
    @Column(name = "url_")
    private String url;

    /**
     * 排序
     */
    @Column(name = "group_")
    private String group;

    /**
     * 创建时间
     */
    @Column(name = "createtime_")
    private String createtime;

    private static final long serialVersionUID = 1L;

    /**
     * 获取id
     *
     * @return id_ - id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置id
     *
     * @param id id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取标题
     *
     * @return title_ - 标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置标题
     *
     * @param title 标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取图片路径
     *
     * @return imgpath_ - 图片路径
     */
    public String getImgpath() {
        return imgpath;
    }

    /**
     * 设置图片路径
     *
     * @param imgpath 图片路径
     */
    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }

    /**
     * 获取对应链接
     *
     * @return url_ - 对应链接
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置对应链接
     *
     * @param url 对应链接
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取排序
     *
     * @return group_ - 排序
     */
    public String getGroup() {
        return group;
    }

    /**
     * 设置排序
     *
     * @param group 排序
     */
    public void setGroup(String group) {
        this.group = group;
    }

    /**
     * 获取创建时间
     *
     * @return createtime_ - 创建时间
     */
    public String getCreatetime() {
        return createtime;
    }

    /**
     * 设置创建时间
     *
     * @param createtime 创建时间
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        JlsWebsiteSlideshow other = (JlsWebsiteSlideshow) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getImgpath() == null ? other.getImgpath() == null : this.getImgpath().equals(other.getImgpath()))
            && (this.getUrl() == null ? other.getUrl() == null : this.getUrl().equals(other.getUrl()))
            && (this.getGroup() == null ? other.getGroup() == null : this.getGroup().equals(other.getGroup()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getImgpath() == null) ? 0 : getImgpath().hashCode());
        result = prime * result + ((getUrl() == null) ? 0 : getUrl().hashCode());
        result = prime * result + ((getGroup() == null) ? 0 : getGroup().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", imgpath=").append(imgpath);
        sb.append(", url=").append(url);
        sb.append(", group=").append(group);
        sb.append(", createtime=").append(createtime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}