package DTO;

public class TBL_RESERVATION {

	String reservationnum; //예약번호
	String reservationstatus; //예약상태
	String userid; //회원아이디
	String roomname; //객실명
	String starttime; //예약 시작시간
	String deadline; //예약 마감시간
	String name;//예약자명
	String phon;//예약자전화번호
	long totalprice; //총금액
	String pensionid; //펜션 고유번호
	String people; //숙박인원
	long day; //숙박일수
	String room; //객실수
	
	public TBL_RESERVATION() {}
	
	public TBL_RESERVATION(String reservationnum, String roomname, String starttime, String deadline, String name, String phon,
			String pensionid, String userid, String room, String people, long day, long totalprice) {
		super();
		this.reservationnum=reservationnum;
		this.roomname = roomname;
		this.starttime = starttime;
		this.deadline = deadline;
		this.name = name;
		this.phon = phon;
		this.pensionid = pensionid;
		this.userid = userid;
		this.room = room;
		this.people = people;
		this.day = day;
		this.totalprice = totalprice;
	}
	public TBL_RESERVATION(String roomname, String starttime, String deadline, String name, String phon,
			String pensionid, String userid, String room, String people, long day, long totalprice) {
		super();
		this.roomname = roomname;
		this.starttime = starttime;
		this.deadline = deadline;
		this.name = name;
		this.phon = phon;
		this.pensionid = pensionid;
		this.userid = userid;
		this.room = room;
		this.people = people;
		this.day = day;
		this.totalprice = totalprice;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getReservationnum() {
		return reservationnum;
	}
	public void setReservationnum(String reservationnum) {
		this.reservationnum = reservationnum;
	}
	public String getReservationstatus() {
		return reservationstatus;
	}
	public void setReservationstatus(String reservationstatus) {
		this.reservationstatus = reservationstatus;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhon() {
		return phon;
	}
	public void setPhon(String phon) {
		this.phon = phon;
	}
	public long getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(long totalprice) {
		this.totalprice = totalprice;
	}
	public String getPensionid() {
		return pensionid;
	}
	public void setPensionid(String pensionid) {
		this.pensionid = pensionid;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public long getDay() {
		return day;
	}
	public void setDay(long day) {
		this.day = day;
	}	
}
