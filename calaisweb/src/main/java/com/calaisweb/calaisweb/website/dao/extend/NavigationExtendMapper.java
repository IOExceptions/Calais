package com.calaisweb.calaisweb.website.dao.extend;

import java.util.List;

import com.calaisweb.calaisweb.website.entity.extend.NavigationExtend;

public interface NavigationExtendMapper {
	/**
	 * 查询扩展对象
	 * **/
	List<NavigationExtend> selectAll();
}
