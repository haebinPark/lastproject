package controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import DTO.Criteria;
import DTO.NoticeDto;
import DTO.PageDto;
import service.NoticeService;

@Controller
@RequestMapping("/board/")
public class NoticeController {

	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("list")
	public String list(Criteria cri, Model model) {
		PageDto pageDto = new PageDto();
		pageDto.setCri(cri);

		List<NoticeDto> list = noticeService.getList(cri);
		pageDto.setTotalCount(noticeService.getListCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageDto", pageDto);
		return "board/notice";
	}

	@RequestMapping("detail")
	public String detail(@RequestParam("notice_code") int notice_code, @ModelAttribute("cri") Criteria cri, Model model) {
		NoticeDto dto = noticeService.getRead(notice_code);
		
		model.addAttribute("dto",dto);
		return "board/notice_detail";
	}
	@RequestMapping("update")
	public String update(NoticeDto dto) {
		noticeService.setInsert(dto);
		return "redirect:list";
	}
	@RequestMapping("notice_add")
	public String notice_add(HttpSession session, HttpServletResponse response) throws Exception {
		String userid = (String)session.getAttribute("userid");
		if(userid ==null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('로그인이 필요한 서비스입니다. 로그인 이후 다시 시도해주세요.');location.href='/lastproject_spring/login/login';</script>");
			w.flush();
		}
		return "board/notice_add";
	}
}
