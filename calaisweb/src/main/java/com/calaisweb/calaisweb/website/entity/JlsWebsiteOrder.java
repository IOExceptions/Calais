package com.calaisweb.calaisweb.website.entity;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "jls_website_order")
public class JlsWebsiteOrder implements Serializable {
    /**
     * id_
     */
    @Id
    @Column(name = "id_")
    private String id;

    /**
     * 用户名_
     */
    @Column(name = "name_")
    private String name;

    /**
     * 手机_
     */
    @Column(name = "phone_")
    private String phone;

    /**
     * 货物类型_
     */
    @Column(name = "cargo_type_")
    private String cargoType;

    /**
     * 运输方式_
     */
    @Column(name = "carriage_")
    private String carriage;

    /**
     * 货重_
     */
    @Column(name = "weight_")
    private String weight;

    /**
     * 当前订单状态(0：未处理 1已处理)
     */
    @Column(name = "state_")
    private String state;

    private static final long serialVersionUID = 1L;

    /**
     * 获取id_
     *
     * @return id_ - id_
     */
    public String getId() {
        return id;
    }

    /**
     * 设置id_
     *
     * @param id id_
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取用户名_
     *
     * @return name_ - 用户名_
     */
    public String getName() {
        return name;
    }

    /**
     * 设置用户名_
     *
     * @param name 用户名_
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取手机_
     *
     * @return phone_ - 手机_
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置手机_
     *
     * @param phone 手机_
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取货物类型_
     *
     * @return cargo_type_ - 货物类型_
     */
    public String getCargoType() {
        return cargoType;
    }

    /**
     * 设置货物类型_
     *
     * @param cargoType 货物类型_
     */
    public void setCargoType(String cargoType) {
        this.cargoType = cargoType;
    }

    /**
     * 获取运输方式_
     *
     * @return carriage_ - 运输方式_
     */
    public String getCarriage() {
        return carriage;
    }

    /**
     * 设置运输方式_
     *
     * @param carriage 运输方式_
     */
    public void setCarriage(String carriage) {
        this.carriage = carriage;
    }

    /**
     * 获取货重_
     *
     * @return weight_ - 货重_
     */
    public String getWeight() {
        return weight;
    }

    /**
     * 设置货重_
     *
     * @param weight 货重_
     */
    public void setWeight(String weight) {
        this.weight = weight;
    }

    /**
     * 获取当前订单状态(0：未处理 1已处理)
     *
     * @return state_ - 当前订单状态(0：未处理 1已处理)
     */
    public String getState() {
        return state;
    }

    /**
     * 设置当前订单状态(0：未处理 1已处理)
     *
     * @param state 当前订单状态(0：未处理 1已处理)
     */
    public void setState(String state) {
        this.state = state;
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
        JlsWebsiteOrder other = (JlsWebsiteOrder) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getPhone() == null ? other.getPhone() == null : this.getPhone().equals(other.getPhone()))
            && (this.getCargoType() == null ? other.getCargoType() == null : this.getCargoType().equals(other.getCargoType()))
            && (this.getCarriage() == null ? other.getCarriage() == null : this.getCarriage().equals(other.getCarriage()))
            && (this.getWeight() == null ? other.getWeight() == null : this.getWeight().equals(other.getWeight()))
            && (this.getState() == null ? other.getState() == null : this.getState().equals(other.getState()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getPhone() == null) ? 0 : getPhone().hashCode());
        result = prime * result + ((getCargoType() == null) ? 0 : getCargoType().hashCode());
        result = prime * result + ((getCarriage() == null) ? 0 : getCarriage().hashCode());
        result = prime * result + ((getWeight() == null) ? 0 : getWeight().hashCode());
        result = prime * result + ((getState() == null) ? 0 : getState().hashCode());
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
        sb.append(", phone=").append(phone);
        sb.append(", cargoType=").append(cargoType);
        sb.append(", carriage=").append(carriage);
        sb.append(", weight=").append(weight);
        sb.append(", state=").append(state);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}