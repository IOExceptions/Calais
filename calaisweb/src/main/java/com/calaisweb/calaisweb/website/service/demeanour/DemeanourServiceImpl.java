package com.calaisweb.calaisweb.website.service.demeanour;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JldWebsiteDemeanourMapper;
import com.calaisweb.calaisweb.website.dao.extend.DemeanourtypeMapper;
import com.calaisweb.calaisweb.website.entity.JldWebsiteDemeanour;
import com.calaisweb.calaisweb.website.entity.extend.DemeanourTypeExtend;
import com.calaisweb.calaisweb.website.service.demeanour.impl.DemeanourService;

@Service
public class DemeanourServiceImpl implements DemeanourService {

	@Autowired
	private JldWebsiteDemeanourMapper demeanourMapper;
	
	@Autowired
	private DemeanourtypeMapper demeanourtypeExtendMapper;
	
	
	@Override
	public List<DemeanourTypeExtend> getDemeanourTypeExtendList(HttpServletRequest request,
			HttpServletResponse response) {
		List<DemeanourTypeExtend> retList=demeanourtypeExtendMapper.selectDemeanourTypeExtend();
		return retList;
	}

	/**
	 * 获取所有的风采展示信息
	 * */
	@Override
	public List<JldWebsiteDemeanour> getDemeanourAllList(HttpServletRequest request, HttpServletResponse response) {
		List<JldWebsiteDemeanour> retList=demeanourMapper.selectAll();
		return retList;
	}



}
