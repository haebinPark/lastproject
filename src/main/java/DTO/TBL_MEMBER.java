package DTO;

import java.time.LocalDateTime;

public class TBL_MEMBER {

	String userid; // 회원 아이디
	String pw; // 회원 비밀번호
	String email; // 회원 이메일
	String phone; // 회원 전화번호
	LocalDateTime regdate; // 회원 가입일
	String gender; // 성별
	String name; // 회원 이름
	String birthdate; // 생년월일
	String yy; // 년
	String mm; // 월
	String dd; // 일
	String nickname; // 회원 닉네임
	private boolean remember;

	public TBL_MEMBER() {

	}

	public TBL_MEMBER(String userid, String email) {
		this.userid = userid;
		this.email = email;
	}

	public TBL_MEMBER(String userid, String pw, String email) {
		this.userid = userid;
		this.pw = pw;
		this.email = email;
	}

	public TBL_MEMBER(String userid, String pw, String name, String yy, String mm, String dd, String gender,
			String email, String phone, LocalDateTime regdate) {
		this.userid = userid;
		this.pw = pw;
		this.name = name;
		this.yy = yy;
		this.mm = mm;
		this.dd = dd;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.regdate = regdate;
	}

	public TBL_MEMBER(String userid, String pw, String email, String phone, String gender, String birthdate,
			String name, LocalDateTime regdate) {
		this.userid = userid;
		this.pw = pw;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.birthdate = birthdate;
		this.name = name;
		this.regdate = regdate;
	}

	public boolean isRemember() {
		return remember;
	}

	public void setRememberEmail(boolean remember) {
		this.remember = remember;
	}

	public boolean matchPassword(String password) {
		return this.pw.equals(password);
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public LocalDateTime getRegdate() {
		return regdate;
	}

	public void setRegdate(LocalDateTime regdate) {
		this.regdate = regdate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getYy() {
		return yy;
	}

	public void setYy(String yy) {
		this.yy = yy;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}
}
