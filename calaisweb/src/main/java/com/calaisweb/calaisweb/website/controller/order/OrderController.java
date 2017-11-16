package com.calaisweb.calaisweb.website.controller.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteOrder;
import com.calaisweb.calaisweb.website.service.order.OrderServiceImpl;
import com.calaisweb.calaisweb.website.service.order.impl.OrderService;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	private OrderServiceImpl orderService;
	
	@RequestMapping("postOrder")
	public void postOrder(JlsWebsiteOrder order,HttpServletRequest request,HttpServletResponse response) {
		RetCode retCode=orderService.postOrder(order, request, response);
		ResponseUtil.write(response,retCode);
	}
}
