package com.yb.rest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yb.rest.dao.IAdDao;


@Service
public class AdServiceImpl implements IAdService {
	
	@Autowired
	IAdDao repo;
	
	@Override
	public List<String> getImgs(int id) {
		return repo.getImgs(id);
	}

}
