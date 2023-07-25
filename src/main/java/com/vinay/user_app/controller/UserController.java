package com.vinay.user_app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vinay.user_app.dao.UserDao;
import com.vinay.user_app.dto.User;

@Controller
public class UserController {
	@Autowired
	private UserDao dao;

	@PostMapping(value = "/register")
	public ModelAndView saveUser(@ModelAttribute User u, ModelAndView view) {
		u = dao.saveUser(u);
		view.addObject("msg", "Register Successfully with ID:" + u.getId());
		view.setViewName("success.jsp");
		return view;
	}

	@RequestMapping(value = "/byPhone")
	public ModelAndView verifyByPhone(@RequestParam long phone, @RequestParam String password, ModelAndView view) {
		User u = dao.verifyByPhone(phone, password);
		if (u != null) {
			view.addObject("u", u);
			view.setViewName("userAccount.jsp");
			return view;
		} else {
			view.addObject("msg", "Invlid Phone or password");
			view.setViewName("unsuccess.jsp");
			return view;
		}
	}
	
	@RequestMapping(value = "/confirm")
	public ModelAndView confirmToEdit(@RequestParam long phone, @RequestParam String password, ModelAndView view) {
		User u = dao.verifyByPhone(phone, password);
		if (u != null) {
			view.addObject("u", u);
			view.setViewName("edit.jsp");
			return view;
		} else {
			view.addObject("msg", "Invlid Phone or password");
			view.setViewName("unsuccess.jsp");
			return view;
		}
	}
	
	@RequestMapping(value = "/update")
	public ModelAndView updateUser(@ModelAttribute User u, ModelAndView view) {
		u = dao.updateUser(u);
		view.addObject(u);
		view.setViewName("userAccount.jsp");
		return view;
	}
	
}
