package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jld_website_demeanour")
public class JldWebsiteDemeanour implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 图片展示类型id
     */
    @Column(name = "demeanour_type_id_")
    private Integer demeanourTypeId;

    /**
     * 标题
     */
    @Column(name = "title_")
    private String title;

    /**
     * 图片地址
     */
    @Column(name = "path_")
    private String path;

    /**
     * 备注
     */
    @Column(name = "remark_")
    private String remark;

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
     * 获取图片展示类型id
     *
     * @return demeanour_type_id_ - 图片展示类型id
     */
    public Integer getDemeanourTypeId() {
        return demeanourTypeId;
    }

    /**
     * 设置图片展示类型id
     *
     * @param demeanourTypeId 图片展示类型id
     */
    public void setDemeanourTypeId(Integer demeanourTypeId) {
        this.demeanourTypeId = demeanourTypeId;
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
     * 获取图片地址
     *
     * @return path_ - 图片地址
     */
    public String getPath() {
        return path;
    }

    /**
     * 设置图片地址
     *
     * @param path 图片地址
     */
    public void setPath(String path) {
        this.path = path;
    }

    /**
     * 获取备注
     *
     * @return remark_ - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
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
        JldWebsiteDemeanour other = (JldWebsiteDemeanour) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getDemeanourTypeId() == null ? other.getDemeanourTypeId() == null : this.getDemeanourTypeId().equals(other.getDemeanourTypeId()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getPath() == null ? other.getPath() == null : this.getPath().equals(other.getPath()))
            && (this.getRemark() == null ? other.getRemark() == null : this.getRemark().equals(other.getRemark()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getDemeanourTypeId() == null) ? 0 : getDemeanourTypeId().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getPath() == null) ? 0 : getPath().hashCode());
        result = prime * result + ((getRemark() == null) ? 0 : getRemark().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", demeanourTypeId=").append(demeanourTypeId);
        sb.append(", title=").append(title);
        sb.append(", path=").append(path);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}