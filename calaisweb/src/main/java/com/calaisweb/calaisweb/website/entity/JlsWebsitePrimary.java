package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jls_website_primary")
public class JlsWebsitePrimary implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 公司名
     */
    @Column(name = "name_")
    private String name;

    /**
     * 微信公众号二维码_
     */
    @Column(name = "weixin_")
    private String weixin;

    /**
     * 公司介绍
     */
    @Column(name = "content_")
    private String content;

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
     * 获取公司名
     *
     * @return name_ - 公司名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置公司名
     *
     * @param name 公司名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取微信公众号二维码_
     *
     * @return weixin_ - 微信公众号二维码_
     */
    public String getWeixin() {
        return weixin;
    }

    /**
     * 设置微信公众号二维码_
     *
     * @param weixin 微信公众号二维码_
     */
    public void setWeixin(String weixin) {
        this.weixin = weixin;
    }

    /**
     * 获取公司介绍
     *
     * @return content_ - 公司介绍
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置公司介绍
     *
     * @param content 公司介绍
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
        JlsWebsitePrimary other = (JlsWebsitePrimary) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getWeixin() == null ? other.getWeixin() == null : this.getWeixin().equals(other.getWeixin()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getWeixin() == null) ? 0 : getWeixin().hashCode());
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
        sb.append(", name=").append(name);
        sb.append(", weixin=").append(weixin);
        sb.append(", content=").append(content);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}