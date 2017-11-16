package com.calaisweb.framework.tool;

import javax.servlet.http.HttpServletRequest;

import com.github.pagehelper.PageHelper;

public class PageHelperUtil {
	public static void addLimit(HttpServletRequest request) {
		Integer start=Integer.parseInt(request.getParameter("start"));
		Integer size=Integer.parseInt(request.getParameter("line"));
		PageHelper.startPage(start,size);
	}
}
