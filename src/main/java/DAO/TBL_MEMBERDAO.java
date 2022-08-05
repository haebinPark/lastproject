package DAO;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import DTO.TBL_MEMBER;

@Repository
public class TBL_MEMBERDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void insert(final TBL_MEMBER member) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into TBL_MEMBER (USERID,PW,NAME,BIRTHDATE,GENDER,EMAIL,PHONE,REGDATE) values(?,?,?,?,?,?,?,?)");
				pstmt.setString(1, member.getUserid());
				pstmt.setString(2, member.getPw());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getYy()+"-"+member.getMm()+"-"+member.getDd());
				pstmt.setString(5, member.getGender());
				pstmt.setString(6, member.getEmail());
				pstmt.setString(7, member.getPhone());
				pstmt.setTimestamp(8, Timestamp.valueOf(member.getRegdate()));
				return pstmt;
			}
		});
	}
	public int countID(String userid) {
		Integer results = jdbcTemplate.queryForObject(
				"select count(*) from TBL_MEMBER where USERID =?", Integer.class,userid);	
		return results;
	}
	public TBL_MEMBER selectByUSERID(String userid) {
		List<TBL_MEMBER> results = jdbcTemplate.query(
				"select * from TBL_MEMBER where USERID =?",
				new RowMapper<TBL_MEMBER>() {
			@Override
			public TBL_MEMBER mapRow(ResultSet rs, int rowNum)
			throws SQLException{
				TBL_MEMBER member =new TBL_MEMBER(
						rs.getString("USERID"),
						rs.getString("PW"),
						rs.getString("EMAIL"));
				member.setUserid(rs.getString("userid"));
				return member;
			}
		}, userid);	
		return results.isEmpty() ? null:results.get(0);
	}
	
	public void findpw(String userid, String email, HttpServletResponse response) throws Exception {	
		response.setContentType("text/html; charset=utf-8");
		PrintWriter w = response.getWriter();
		w.write("<script>alert('고객님의 현재 비밀번호는"+jdbcTemplate.queryForObject(
				"select PW from TBL_MEMBER where USERID =? and EMAIL=?", String.class,userid,email)+"입니다.');location.href='/lastproject_spring/index';</script>");
		w.flush();
	}
}
