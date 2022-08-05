package controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import DAO.TBL_MEMBERDAO;
import DTO.TBL_MEMBER;
import service.AuthService;
import service.MemberRegisterService;
import spring.WrongIdPasswordException;

@Controller
public class CommonController {
	@Autowired
	private AuthService authService;
	
	@Autowired
	private MemberRegisterService memberRegisterService;
	
	@Autowired
	private TBL_MEMBERDAO memberdao;

	@RequestMapping("/login/login1") // 로그인
	public String submit(TBL_MEMBER login, Errors errors, HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		
		new LoginCommandValidator().validate(login, errors);
		if (errors.hasErrors()) {
			model.addAttribute("error", "2");
			return "/login/login";
		}
		try {
			TBL_MEMBER member = authService.authenticate(login.getUserid(), login.getPw());
			if(member.getUserid().equals("admin")) {
				session.setAttribute("admin", member.getUserid());
				session.setAttribute("userid", member.getUserid());
				session.setAttribute("authInfo", member);
			}
			else {
			session.setAttribute("userid", member.getUserid());
			session.setAttribute("authInfo", member);
			session.setMaxInactiveInterval(3600);
			}
			Cookie rememberCookie = new Cookie("remember", login.getUserid());
			rememberCookie.setPath("/");
			if (login.isRemember()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 30);
			} else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			return "redirect:/index";
		} catch (WrongIdPasswordException e) {
			errors.reject("idPasswordNotMatching");
			model.addAttribute("error", "2");
			return "/login/login";
		}
	}
	@RequestMapping("/login/logout") // 로그아웃
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}

	@RequestMapping("/login/signup") // 회원가입페이지이동
	public String signup() {
		return "/login/signup";
	}
	
	@RequestMapping("/login/memberpw1") // 비밀번호찾기
	public String memberpw(TBL_MEMBER member,HttpServletResponse response ) throws Exception {
		memberdao.findpw(member.getUserid(), member.getEmail(), response);
		return "redirect:/login/memberpw";
	}

	@PostMapping("/login/signup") // 회원가입
	public String signup(TBL_MEMBER member, Model model) {
		try {
			int count = memberdao.countID(member.getUserid());
			if (count == 1) {
				model.addAttribute("error", "1");
				return "/login/signup";
			}
			memberRegisterService.regist(member, model);
			return "redirect:/index";
		} catch (Exception e) {
			model.addAttribute("error", "2");
			return "/login/signup";
		}
	}
}
