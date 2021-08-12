package com.dipinder.ninjagold.controllers;

import java.io.Console;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GoldController {
	private ArrayList<String> actions = new ArrayList<>();
	
	public ArrayList<String> getActions() {
		return actions;
	}
	public void setActions(ArrayList<String> actions) {
		this.actions = actions;
	}
	@RequestMapping
	public String index() {
		return "index.jsp";
	}
	@RequestMapping(value = "/findgold", method=RequestMethod.POST)
	public String findgold(
			@RequestParam("min") int min,
			@RequestParam("max") int max,
			HttpSession session
			) {
		Random random = new Random();
		int randint = random.nextInt(max-min) + min;
		int gold = 0;
		if(session.getAttribute("gold")!=null) {
			gold = (int) session.getAttribute("gold");
		}
		gold+=randint;

		if(randint>0) {
			ArrayList<String> tempArrayList = new ArrayList<String>();
			
		}
		else {

		}
		System.out.println(actions.toString());
		session.setAttribute("gold",gold);
		session.setAttribute("actions",actions);
		return "redirect:/";
	}
}
