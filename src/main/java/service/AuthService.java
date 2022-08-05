package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.TBL_MEMBERDAO;
import DTO.TBL_MEMBER;
import spring.WrongIdPasswordException;
@Service
public class AuthService {

	@Autowired
	private TBL_MEMBERDAO memberDao;

	public TBL_MEMBER authenticate(String userid, String pw) {
		TBL_MEMBER member = memberDao.selectByUSERID(userid);
		if(member==null) {
			throw new WrongIdPasswordException();
		}
		if(!member.matchPassword(pw)) {
			throw new WrongIdPasswordException();
		}
		return new TBL_MEMBER(
				member.getUserid(),
				member.getPw(),
				member.getEmail());

	}
	
}

