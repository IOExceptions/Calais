package com.calaisweb.calaisweb.website.service.contact;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JldWebsiteMessageMapper;
import com.calaisweb.calaisweb.website.dao.JlsWebsiteContactMapper;
import com.calaisweb.calaisweb.website.entity.JldWebsiteMessage;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteContact;
import com.calaisweb.calaisweb.website.service.contact.impl.ContactService;
import com.calaisweb.framework.tool.IDUtil;
import com.calaisweb.framework.type.RetCode;

@Service
public class ContactServiceImpl implements ContactService{

	@Autowired
	private JlsWebsiteContactMapper contactMapper;
	@Autowired
	private JldWebsiteMessageMapper messageMapper;
	/**
	 * 获取到顶置的公司服务点对象对象
	 * **/
	@Override
	public JlsWebsiteContact getOneOverhead(HttpServletRequest request, HttpServletResponse response) {
		JlsWebsiteContact contact=new JlsWebsiteContact();
		contact.setOverhead(1);
		JlsWebsiteContact retContact=contactMapper.selectOne(contact);
		return retContact;
	}
	
	/**
	 * 获取到顶置的公司服务点对象对象
	 * **/
	@Override
	public List<JlsWebsiteContact> getAllOverhead(HttpServletRequest request, HttpServletResponse response) {
		List<JlsWebsiteContact> retList=contactMapper.selectAll();
		return retList;
	}
	
	/**
	 * 意见反馈提交
	 * **/
	@Override
	public RetCode postMessage(JldWebsiteMessage message, HttpServletRequest request, HttpServletResponse response) {
		RetCode retCode=null;
		try {
			message.setId(IDUtil.getUUID());
			Integer retNum=messageMapper.insert(message);
			if(retNum>0) {
				retCode=RetCode.getSuccessCode();
			}else {
				retCode=RetCode.getErrorCode("插入失败！");
			}
		} catch (Exception e) {
			e.printStackTrace();
			retCode=RetCode.getErrorCode("插入出错！");
		}
		return retCode;
	}
	
}
