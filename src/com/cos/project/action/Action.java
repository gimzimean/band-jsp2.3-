package com.cos.project.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {

	void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;

}
