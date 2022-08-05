package service;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.TBL_ROOMDAO;
import DTO.TBL_RESERVATION;
import DTO.TBL_ROOM;
@Service
public class roomService {
	
	@Autowired
	private TBL_ROOMDAO roomdao;
	
	public static TBL_ROOM reservation1(TBL_ROOM room) throws IOException {

		TBL_ROOM room1 = new TBL_ROOM();
		room1.setRoomnum(room.getRoomnum());
		room1.setStarttime(room.getStarttime());
		room1.setDeadline(room.getDeadline());
		room1.setReservationstatus(room.getReservationstatus());
		room1.setPrice(room.getPrice());
		room1.setTotalprice(room.getTotalprice());
		room1.setRoom(room.getRoom());
		room1.setRoomname(room.getRoomname());
		room1.setPensionid(room.getPensionid());
		room1.setPeople(room.getPeople());
		room1.setDay(room.getDay());
		return room1;
	}

	public String reservation2(TBL_RESERVATION room) {
		TBL_RESERVATION room1 = new TBL_RESERVATION(
				room.getRoomname(),
				room.getStarttime(),
				room.getDeadline(),
				room.getName(),
				room.getPhon(),
				room.getPensionid(),
				room.getUserid(),
				room.getRoom(),
				room.getPeople(),
				room.getDay(),
				room.getTotalprice());
		roomdao.reservation(room1);
		return room1.getUserid();
	}
}
