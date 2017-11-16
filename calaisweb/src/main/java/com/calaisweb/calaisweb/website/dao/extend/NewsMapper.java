package com.calaisweb.calaisweb.website.dao.extend;

import org.apache.ibatis.annotations.Param;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteNews;

public interface NewsMapper {
	//上一页
	JlsWebsiteNews getlastNews(@Param("createtime_") String createtime_,@Param("newsType") String newsType);
	//下一页
	JlsWebsiteNews getnextNews(@Param("createtime_") String createtime_,@Param("newsType") String newsType);
}
