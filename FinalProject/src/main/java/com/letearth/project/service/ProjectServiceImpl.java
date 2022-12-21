package com.letearth.project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.letearth.project.persistence.ProjectDAO;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Inject
	private ProjectDAO proDAO;

}
