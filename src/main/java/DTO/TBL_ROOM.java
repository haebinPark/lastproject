package DTO;

public class TBL_ROOM {

	String roomnum; //객실 번호
	String starttime; //예약 시작시간
	String deadline; //예약 마감시간
	String reservationstatus; //예약 상태
	String price; //객실 가격
	long totalprice; //총금액
	String room; //객실수
	String roomname; //객실명
	String pensionid; //펜션 고유번호
	String people; //숙박인원
	long day; //숙박일수
	
	
	public TBL_ROOM() {}
	
	public TBL_ROOM(String roomnum, String starttime, String deadline, String reservationstatus, String price,
			long totalprice, String room, String roomname, String pensionid, String people, long day) {
		super();
		this.roomnum = roomnum;
		this.starttime = starttime;
		this.deadline = deadline;
		this.reservationstatus = reservationstatus;
		this.price = price;
		this.totalprice = totalprice;
		this.room = room;
		this.roomname = roomname;
		this.pensionid = pensionid;
		this.people = people;
		this.day = day;
	}
	public long getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(long totalprice) {
		this.totalprice = totalprice;
	}
	public long getDay() {
		return day;
	}
	public void setDay(long day) {
		this.day = day;
	}
	public String getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(String roomnum) {
		this.roomnum = roomnum;
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
	public String getReservationstatus() {
		return reservationstatus;
	}
	public void setReservationstatus(String reservationstatus) {
		this.reservationstatus = reservationstatus;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
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
	
	
}
