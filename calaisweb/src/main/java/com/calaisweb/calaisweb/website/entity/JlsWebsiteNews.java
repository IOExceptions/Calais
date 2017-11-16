package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jls_website_news")
public class JlsWebsiteNews implements Serializable {
    /**
     * id
     */
    @Id
    private String id;

    /**
     * 所属栏位
     */
    @Column(name = "fence_")
    private String fence;

    /**
     * 标题
     */
    @Column(name = "title_")
    private String title;

    /**
     * 文章展示图片
     */
    @Column(name = "picture_")
    private String picture;

    /**
     * 主编
     */
    @Column(name = "editor_")
    private String editor;

    /**
     * 创建时间
     */
    @Column(name = "createtime_")
    private String createtime;

    /**
     * 排序
     */
    @Column(name = "order_")
    private Integer order;

    /**
     * 阅读量
     */
    @Column(name = "num_")
    private Integer num;

    /**
     * 新闻类型
     */
    @Column(name = "news_type_")
    private String newsType;

    /**
     * 是否显示在首页(0为假1位真)
     */
    @Column(name = "main_show_")
    private Integer mainShow;

    /**
     * 内容
     */
    @Column(name = "content_")
    private String content;

    private static final long serialVersionUID = 1L;

    /**
     * 获取id
     *
     * @return id - id
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
     * 获取所属栏位
     *
     * @return fence_ - 所属栏位
     */
    public String getFence() {
        return fence;
    }

    /**
     * 设置所属栏位
     *
     * @param fence 所属栏位
     */
    public void setFence(String fence) {
        this.fence = fence;
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
     * 获取文章展示图片
     *
     * @return picture_ - 文章展示图片
     */
    public String getPicture() {
        return picture;
    }

    /**
     * 设置文章展示图片
     *
     * @param picture 文章展示图片
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }

    /**
     * 获取主编
     *
     * @return editor_ - 主编
     */
    public String getEditor() {
        return editor;
    }

    /**
     * 设置主编
     *
     * @param editor 主编
     */
    public void setEditor(String editor) {
        this.editor = editor;
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

    /**
     * 获取排序
     *
     * @return order_ - 排序
     */
    public Integer getOrder() {
        return order;
    }

    /**
     * 设置排序
     *
     * @param order 排序
     */
    public void setOrder(Integer order) {
        this.order = order;
    }

    /**
     * 获取阅读量
     *
     * @return num_ - 阅读量
     */
    public Integer getNum() {
        return num;
    }

    /**
     * 设置阅读量
     *
     * @param num 阅读量
     */
    public void setNum(Integer num) {
        this.num = num;
    }

    /**
     * 获取新闻类型
     *
     * @return news_type_ - 新闻类型
     */
    public String getNewsType() {
        return newsType;
    }

    /**
     * 设置新闻类型
     *
     * @param newsType 新闻类型
     */
    public void setNewsType(String newsType) {
        this.newsType = newsType;
    }

    /**
     * 获取是否显示在首页(0为假1位真)
     *
     * @return main_show_ - 是否显示在首页(0为假1位真)
     */
    public Integer getMainShow() {
        return mainShow;
    }

    /**
     * 设置是否显示在首页(0为假1位真)
     *
     * @param mainShow 是否显示在首页(0为假1位真)
     */
    public void setMainShow(Integer mainShow) {
        this.mainShow = mainShow;
    }

    /**
     * 获取内容
     *
     * @return content_ - 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
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
        JlsWebsiteNews other = (JlsWebsiteNews) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getFence() == null ? other.getFence() == null : this.getFence().equals(other.getFence()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getPicture() == null ? other.getPicture() == null : this.getPicture().equals(other.getPicture()))
            && (this.getEditor() == null ? other.getEditor() == null : this.getEditor().equals(other.getEditor()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getOrder() == null ? other.getOrder() == null : this.getOrder().equals(other.getOrder()))
            && (this.getNum() == null ? other.getNum() == null : this.getNum().equals(other.getNum()))
            && (this.getNewsType() == null ? other.getNewsType() == null : this.getNewsType().equals(other.getNewsType()))
            && (this.getMainShow() == null ? other.getMainShow() == null : this.getMainShow().equals(other.getMainShow()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getFence() == null) ? 0 : getFence().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getPicture() == null) ? 0 : getPicture().hashCode());
        result = prime * result + ((getEditor() == null) ? 0 : getEditor().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getOrder() == null) ? 0 : getOrder().hashCode());
        result = prime * result + ((getNum() == null) ? 0 : getNum().hashCode());
        result = prime * result + ((getNewsType() == null) ? 0 : getNewsType().hashCode());
        result = prime * result + ((getMainShow() == null) ? 0 : getMainShow().hashCode());
        result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", fence=").append(fence);
        sb.append(", title=").append(title);
        sb.append(", picture=").append(picture);
        sb.append(", editor=").append(editor);
        sb.append(", createtime=").append(createtime);
        sb.append(", order=").append(order);
        sb.append(", num=").append(num);
        sb.append(", newsType=").append(newsType);
        sb.append(", mainShow=").append(mainShow);
        sb.append(", content=").append(content);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}