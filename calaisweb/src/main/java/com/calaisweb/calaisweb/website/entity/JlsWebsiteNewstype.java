package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jls_website_newstype")
public class JlsWebsiteNewstype implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 类型
     */
    @Column(name = "typename_")
    private String typename;

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
     * 获取类型
     *
     * @return typename_ - 类型
     */
    public String getTypename() {
        return typename;
    }

    /**
     * 设置类型
     *
     * @param typename 类型
     */
    public void setTypename(String typename) {
        this.typename = typename;
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
        JlsWebsiteNewstype other = (JlsWebsiteNewstype) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTypename() == null ? other.getTypename() == null : this.getTypename().equals(other.getTypename()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTypename() == null) ? 0 : getTypename().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", typename=").append(typename);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}