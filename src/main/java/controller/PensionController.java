package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.TypeMismatchException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DAO.TBL_PENSIONDAO;
import DTO.TBL_PENSION;
import service.PensionService;
import spring.NotFoundException;

@Controller
public class PensionController {
	
	@Autowired
	private PensionService pensionService;
	
	@Autowired
	private TBL_PENSIONDAO pensionDao;

	@GetMapping("/register") //펜션등록페이지이동
	public String register() {
		return "room/register";
	}
	
	@RequestMapping("/pension") //펜션등록
	public String newpension(HttpServletRequest req, Model model)throws IOException {
		try {
			String filename="";
			String realPath=req.getSession().getServletContext().getRealPath("/process/img");
			Integer maxSize = 5*1024*1024;
			String encType="utf-8";
			req.setCharacterEncoding("utf-8");
			MultipartRequest multi = new MultipartRequest(req, realPath, maxSize, encType,
					new DefaultFileRenamePolicy());	

			int count = pensionDao.select(multi);
				if(count==1) {
					model.addAttribute("error","1");
					return "room/register";
				}
				else {
				TBL_PENSION pension = PensionService.upload(multi);
				pensionDao.insert(pension);
				return "redirect:index";
				}
		}catch (Exception e){
			model.addAttribute("error","2");
			return "room/register";
		}
	}
	
	@RequestMapping("/detaills") //특정펜션
	public String detail(Model pension,@RequestParam String pensionid) throws IOException {
		TBL_PENSION select_pension = pensionDao.selectPension(pensionid);
		Calendar cal = Calendar.getInstance();
		Calendar cal1 = Calendar.getInstance();
		String format = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		cal1.add(cal1.DATE, +1);
		String date = sdf.format(cal.getTime());
		String date1 = sdf.format(cal1.getTime());

		pension.addAttribute("tomorrow",date1);
		pension.addAttribute("now",date);
		pension.addAttribute("select_pension",select_pension);
		return "room/room-details";
	}

	@RequestMapping("/pensionList") //펜션전체
	public String list(TBL_PENSION listCommand, Model model, HttpServletRequest req) {
			//re.addAttribute("page",pensionDao.page(req));
			List<TBL_PENSION> members = pensionDao.allPension();
			model.addAttribute("page",pensionDao.page(req));
			model.addAttribute("members",members);
		return "/room/rooms";
	}
	
	@ExceptionHandler(TypeMismatchException.class)
	public String handleTypeMismatchException() { //타입이잘못되면
		return "main";
	}
	@ExceptionHandler(NotFoundException.class)
	public String handleNotFoundException() { //없으면
		return "main";
	}
}
