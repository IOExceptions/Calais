package com.calaisweb.calaisweb.website.service.order.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteOrder;
import com.calaisweb.framework.type.RetCode;

public interface OrderService {
	RetCode postOrder(JlsWebsiteOrder order,HttpServletRequest request,HttpServletResponse response);
}
