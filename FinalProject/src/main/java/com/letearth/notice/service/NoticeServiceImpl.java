package com.letearth.notice.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.letearth.notice.persistence.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService {
		
	@Inject
	private NoticeDAO notDAO;

}
