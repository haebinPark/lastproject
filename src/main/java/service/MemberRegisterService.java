package service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import DAO.TBL_MEMBERDAO;
import DTO.TBL_MEMBER;
import spring.DuplicateMemberException;
@Service
public class MemberRegisterService {
	
	@Autowired
	private TBL_MEMBERDAO memberDao;

	public String regist(TBL_MEMBER mem, Model model)  {
		TBL_MEMBER member = memberDao.selectByUSERID(mem.getUserid());
		if (member != null) {
			throw new DuplicateMemberException("dup email " + mem.getUserid());
		}
		TBL_MEMBER newMember = new TBL_MEMBER(
				mem.getUserid(), 
				mem.getPw(), 
				mem.getName(),
				mem.getYy(),
				mem.getMm(),
				mem.getDd(),
				mem.getGender(),
				mem.getEmail(),
				mem.getPhone(),
				LocalDateTime.now());
		memberDao.insert(newMember);
		return newMember.getUserid();
	}
}
