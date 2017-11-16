package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jld_website_navigation")
public class JldWebsiteNavigation implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 英文显示
     */
    @Column(name = "en_")
    private String en;

    /**
     * 导航显示
     */
    @Column(name = "text_")
    private String text;

    /**
     * url链接
     */
    @Column(name = "url_")
    private String url;

    /**
     * 上级父菜单
     */
    @Column(name = "parent_id_")
    private String parentId;

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
     * 获取英文显示
     *
     * @return en_ - 英文显示
     */
    public String getEn() {
        return en;
    }

    /**
     * 设置英文显示
     *
     * @param en 英文显示
     */
    public void setEn(String en) {
        this.en = en;
    }

    /**
     * 获取导航显示
     *
     * @return text_ - 导航显示
     */
    public String getText() {
        return text;
    }

    /**
     * 设置导航显示
     *
     * @param text 导航显示
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * 获取url链接
     *
     * @return url_ - url链接
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置url链接
     *
     * @param url url链接
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取上级父菜单
     *
     * @return parent_id_ - 上级父菜单
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * 设置上级父菜单
     *
     * @param parentId 上级父菜单
     */
    public void setParentId(String parentId) {
        this.parentId = parentId;
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
        JldWebsiteNavigation other = (JldWebsiteNavigation) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getEn() == null ? other.getEn() == null : this.getEn().equals(other.getEn()))
            && (this.getText() == null ? other.getText() == null : this.getText().equals(other.getText()))
            && (this.getUrl() == null ? other.getUrl() == null : this.getUrl().equals(other.getUrl()))
            && (this.getParentId() == null ? other.getParentId() == null : this.getParentId().equals(other.getParentId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getEn() == null) ? 0 : getEn().hashCode());
        result = prime * result + ((getText() == null) ? 0 : getText().hashCode());
        result = prime * result + ((getUrl() == null) ? 0 : getUrl().hashCode());
        result = prime * result + ((getParentId() == null) ? 0 : getParentId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", en=").append(en);
        sb.append(", text=").append(text);
        sb.append(", url=").append(url);
        sb.append(", parentId=").append(parentId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}