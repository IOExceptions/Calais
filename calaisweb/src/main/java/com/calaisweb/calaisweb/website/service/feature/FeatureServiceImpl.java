package com.calaisweb.calaisweb.website.service.feature;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JlsWebsiteFeatureMapper;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteFeature;
import com.calaisweb.calaisweb.website.service.feature.impl.FeatureService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service
public class FeatureServiceImpl implements FeatureService{

	@Autowired
	private JlsWebsiteFeatureMapper featureMapper;
	
	/**
	 * 获取所有特色服务
	 * */
	@Override
	public List<JlsWebsiteFeature> getAllFaeatureList(HttpServletRequest request,HttpServletResponse response) {
		Example example=new Example(JlsWebsiteFeature.class);
		example.orderBy("order");
		Criteria criteria=example.createCriteria();
		List<JlsWebsiteFeature> retList=featureMapper.selectByExample(example);
		return retList;
	}
	/**
	 * 根据ID查询一个特色服务
	 * */
	@Override
	public JlsWebsiteFeature getFeatureById(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		JlsWebsiteFeature retBean=featureMapper.selectByPrimaryKey(id);
		return retBean;
	}
	
}
