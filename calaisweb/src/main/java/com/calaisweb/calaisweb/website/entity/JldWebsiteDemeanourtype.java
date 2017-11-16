package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jld_website_demeanourtype")
public class JldWebsiteDemeanourtype implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 标题
     */
    @Column(name = "text_")
    private String text;

    /**
     * 链接url
     */
    @Column(name = "url_")
    private String url;

    /**
     * 排序
     */
    @Column(name = "order_")
    private Integer order;

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
     * @return text_ - 标题
     */
    public String getText() {
        return text;
    }

    /**
     * 设置标题
     *
     * @param text 标题
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * 获取链接url
     *
     * @return url_ - 链接url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置链接url
     *
     * @param url 链接url
     */
    public void setUrl(String url) {
        this.url = url;
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
        JldWebsiteDemeanourtype other = (JldWebsiteDemeanourtype) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getText() == null ? other.getText() == null : this.getText().equals(other.getText()))
            && (this.getUrl() == null ? other.getUrl() == null : this.getUrl().equals(other.getUrl()))
            && (this.getOrder() == null ? other.getOrder() == null : this.getOrder().equals(other.getOrder()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getText() == null) ? 0 : getText().hashCode());
        result = prime * result + ((getUrl() == null) ? 0 : getUrl().hashCode());
        result = prime * result + ((getOrder() == null) ? 0 : getOrder().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", text=").append(text);
        sb.append(", url=").append(url);
        sb.append(", order=").append(order);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}