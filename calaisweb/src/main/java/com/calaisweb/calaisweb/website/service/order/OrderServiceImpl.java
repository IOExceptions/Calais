package com.calaisweb.calaisweb.website.service.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JlsWebsiteOrderMapper;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteOrder;
import com.calaisweb.calaisweb.website.service.order.impl.OrderService;
import com.calaisweb.framework.tool.IDUtil;
import com.calaisweb.framework.type.RetCode;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired

	private JlsWebsiteOrderMapper orderMapper;
	@Override
	public RetCode postOrder(JlsWebsiteOrder order,HttpServletRequest request,HttpServletResponse response) {
		RetCode retCode=null;
		try {
			order.setId(IDUtil.getUUID());
			order.setState("0");
			Integer num=orderMapper.insert(order);
			if(num>0) {
				retCode=RetCode.getSuccessCode("保存成功！");
			}else {
				retCode=RetCode.getErrorCode("系统错误,保存失败！");
			}
		} catch (Exception e) {
			e.printStackTrace();
			retCode=RetCode.getErrorCode("系统错误,保存失败！");
		}
		return retCode;
	}

}
