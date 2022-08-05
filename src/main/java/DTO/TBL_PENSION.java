package DTO;

import java.sql.Date;
import java.util.Arrays;

public class TBL_PENSION {

	String pensionid; //펜션 고유번호
	String name; //펜션 이름
	String userid; //회원아이디(펜션)
	String address; //주소
	String comments; //사장님 한 마디
	String price; //가격
	String roomnumber; //방개수
	String maxpeople; //최대숙박인수
	String checkin; //입실
	String checkout; //퇴실
	String service; //편의시설
	String inservice; //편의시설
	String image; //이미지
	

    // import java.util
    private Date regdate = null;
	
	public TBL_PENSION() {}
	
	public TBL_PENSION(String pensionid) {
		this.pensionid = pensionid;
	}
	
	
	public TBL_PENSION(String pensionid ,String name,String address ,String comments ,String price) {
		this.pensionid = pensionid;
		this.name = name;
		this.address = address;
		this.comments = comments;
		this.price = price;
	}
	public TBL_PENSION(String name ,String price ,String roomnumber, String maxpeople ,String address ,String comments ,
			String checkin ,String checkout, String service, String inservice, String image) {
		this.name = name;
		this.price = price;
		this.roomnumber = roomnumber;
		this.maxpeople = maxpeople;
		this.address = address;
		this.comments = comments;
		this.checkin = checkin;
		this.checkout = checkout;
		this.service = service;
		this.inservice = inservice;
		this.image= image;
	}	
	public TBL_PENSION(String pensionid, String name, String address, String price ,String roomnumber, String maxpeople  ,String comments ,
			String checkin ,String checkout, String service, String inservice, String image) {
		this.pensionid = pensionid;
		this.name = name;
		this.address = address;
		this.price = price;
		this.roomnumber = roomnumber;
		this.maxpeople = maxpeople;
		this.comments = comments;
		this.checkin = checkin;
		this.checkout = checkout;
		this.service = service;
		this.inservice = inservice;
		this.image= image;
	}		
	
	
	public TBL_PENSION(String pensionid, String name, String userid,String address, String comments,
			String price,String roomnumber, String maxpeople, String checkin, String checkout, 
			String service, String inservice, String image) {
		super();
		this.pensionid = pensionid;
		this.name = name;
		this.userid = userid;
		this.address = address;
		this.comments = comments;
		this.price = price;
		this.roomnumber = roomnumber;
		this.maxpeople = maxpeople;	
		this.checkin = checkin;
		this.checkout = checkout;
		this.service = service;
		this.inservice = inservice;
		this.image = image;
	}


	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getMaxpeople() {
		return maxpeople;
	}
	public void setMaxpeople(String maxpeople) {
		this.maxpeople = maxpeople;
	}
	public String getRoomnumber() {
		return roomnumber;
	}
	public void setRoomnumber(String roomnumber) {
		this.roomnumber = roomnumber;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getInservice() {
		return inservice;
	}
	public void setInservice(String inservice) {
		this.inservice = inservice;
	}
	public String getPensionid() {
		return pensionid;
	}
	public void setPensionid(String pensionid) {
		this.pensionid = pensionid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}
