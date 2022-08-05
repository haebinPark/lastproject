package controller;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import DAO.TBL_ROOMDAO;
import DTO.TBL_MEMBER;
import DTO.TBL_RESERVATION;
import DTO.TBL_ROOM;
import service.roomService;

@Controller
public class RoomController {
	@Autowired
	private TBL_ROOMDAO roomdao;
	
	@Autowired
	private roomService roomservice;
	
	@RequestMapping("/room-reservation") //예약페이지로 이동
	public String book(TBL_ROOM room, HttpSession session, Model model, HttpServletResponse response) throws Exception {
		String userid = (String)session.getAttribute("userid");
		if(userid ==null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('로그인이 필요한 서비스입니다. 로그인 이후 다시 시도해주세요.');location.href='/lastproject_spring/login/login';</script>");
			w.flush();
		}
		LocalDate sld = LocalDate.of(Integer.valueOf(room.getStarttime().substring(0, 4)), Integer.valueOf(room.getStarttime().substring(5,7)), Integer.valueOf(room.getStarttime().substring(8,10)));
		LocalDate eld = LocalDate.of(Integer.valueOf(room.getDeadline().substring(0, 4)), Integer.valueOf(room.getDeadline().substring(5,7)), Integer.valueOf(room.getDeadline().substring(8,10)));
		if(eld.isBefore(sld)) {
			return "redirect:/index";
		}
		long ans = ChronoUnit.DAYS.between(sld, eld);
		room.setDay(ans);
		long totalprice=room.getDay()*Integer.parseInt(room.getPrice());
		room.setTotalprice(totalprice);
		try {
			roomService.reservation1(room);
			return "room/room-reservation1";
		}catch (Exception e) {
			return  "redirect:/index";
		}		
	}
	
	@RequestMapping("/room-reservation1") //결제하기버튼(예약등록)
	public String reservation(TBL_RESERVATION room, Model model) {
		
		try {
			roomservice.reservation2(room);
			return  "redirect:/index";
		}catch (Exception e) {
			model.addAttribute("error", "2");
			return "room/room-reservation1";
		}
	}
	@RequestMapping("/reservation_detail")
	public String reservationlist(Model model, HttpSession session) {
		TBL_MEMBER authInfo = (TBL_MEMBER)session.getAttribute("authInfo");
		if(authInfo ==null) {
			model.addAttribute("error", "1");
			return "/login/login";
		}
		List<TBL_RESERVATION> reservationlist = roomdao.reservationlist(authInfo.getUserid());
		model.addAttribute("reservationlist",reservationlist);
		return "/room/reservation_detail";
	}
}
