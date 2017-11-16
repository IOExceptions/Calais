package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jls_website_contact")
public class JlsWebsiteContact implements Serializable {
    /**
     * id
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 公司地址
     */
    @Column(name = "address_")
    private String address;

    /**
     * 公司座机
     */
    @Column(name = "special_plane_")
    private String specialPlane;

    /**
     * 公司传真
     */
    @Column(name = "fax_")
    private String fax;

    /**
     * 公司经纬度_
     */
    @Column(name = "jingwei_")
    private String jingwei;

    /**
     * 公司名_
     */
    @Column(name = "name_")
    private String name;

    /**
     * 邮编_
     */
    @Column(name = "postcode_")
    private String postcode;

    /**
     * 是否顶置(0假,1真)
     */
    @Column(name = "overhead_")
    private Integer overhead;

    /**
     * 邮箱
     */
    @Column(name = "emaile_")
    private String emaile;

    /**
     * 公司介绍_
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
     * 获取公司地址
     *
     * @return address_ - 公司地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置公司地址
     *
     * @param address 公司地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取公司座机
     *
     * @return special_plane_ - 公司座机
     */
    public String getSpecialPlane() {
        return specialPlane;
    }

    /**
     * 设置公司座机
     *
     * @param specialPlane 公司座机
     */
    public void setSpecialPlane(String specialPlane) {
        this.specialPlane = specialPlane;
    }

    /**
     * 获取公司传真
     *
     * @return fax_ - 公司传真
     */
    public String getFax() {
        return fax;
    }

    /**
     * 设置公司传真
     *
     * @param fax 公司传真
     */
    public void setFax(String fax) {
        this.fax = fax;
    }

    /**
     * 获取公司经纬度_
     *
     * @return jingwei_ - 公司经纬度_
     */
    public String getJingwei() {
        return jingwei;
    }

    /**
     * 设置公司经纬度_
     *
     * @param jingwei 公司经纬度_
     */
    public void setJingwei(String jingwei) {
        this.jingwei = jingwei;
    }

    /**
     * 获取公司名_
     *
     * @return name_ - 公司名_
     */
    public String getName() {
        return name;
    }

    /**
     * 设置公司名_
     *
     * @param name 公司名_
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取邮编_
     *
     * @return postcode_ - 邮编_
     */
    public String getPostcode() {
        return postcode;
    }

    /**
     * 设置邮编_
     *
     * @param postcode 邮编_
     */
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    /**
     * 获取是否顶置(0假,1真)
     *
     * @return overhead_ - 是否顶置(0假,1真)
     */
    public Integer getOverhead() {
        return overhead;
    }

    /**
     * 设置是否顶置(0假,1真)
     *
     * @param overhead 是否顶置(0假,1真)
     */
    public void setOverhead(Integer overhead) {
        this.overhead = overhead;
    }

    /**
     * 获取邮箱
     *
     * @return emaile_ - 邮箱
     */
    public String getEmaile() {
        return emaile;
    }

    /**
     * 设置邮箱
     *
     * @param emaile 邮箱
     */
    public void setEmaile(String emaile) {
        this.emaile = emaile;
    }

    /**
     * 获取公司介绍_
     *
     * @return content_ - 公司介绍_
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置公司介绍_
     *
     * @param content 公司介绍_
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
        JlsWebsiteContact other = (JlsWebsiteContact) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getAddress() == null ? other.getAddress() == null : this.getAddress().equals(other.getAddress()))
            && (this.getSpecialPlane() == null ? other.getSpecialPlane() == null : this.getSpecialPlane().equals(other.getSpecialPlane()))
            && (this.getFax() == null ? other.getFax() == null : this.getFax().equals(other.getFax()))
            && (this.getJingwei() == null ? other.getJingwei() == null : this.getJingwei().equals(other.getJingwei()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getPostcode() == null ? other.getPostcode() == null : this.getPostcode().equals(other.getPostcode()))
            && (this.getOverhead() == null ? other.getOverhead() == null : this.getOverhead().equals(other.getOverhead()))
            && (this.getEmaile() == null ? other.getEmaile() == null : this.getEmaile().equals(other.getEmaile()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getAddress() == null) ? 0 : getAddress().hashCode());
        result = prime * result + ((getSpecialPlane() == null) ? 0 : getSpecialPlane().hashCode());
        result = prime * result + ((getFax() == null) ? 0 : getFax().hashCode());
        result = prime * result + ((getJingwei() == null) ? 0 : getJingwei().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getPostcode() == null) ? 0 : getPostcode().hashCode());
        result = prime * result + ((getOverhead() == null) ? 0 : getOverhead().hashCode());
        result = prime * result + ((getEmaile() == null) ? 0 : getEmaile().hashCode());
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
        sb.append(", address=").append(address);
        sb.append(", specialPlane=").append(specialPlane);
        sb.append(", fax=").append(fax);
        sb.append(", jingwei=").append(jingwei);
        sb.append(", name=").append(name);
        sb.append(", postcode=").append(postcode);
        sb.append(", overhead=").append(overhead);
        sb.append(", emaile=").append(emaile);
        sb.append(", content=").append(content);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}