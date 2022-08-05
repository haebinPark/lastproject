package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import DTO.TBL_RESERVATION;
@Repository
public class TBL_ROOMDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void reservation(final TBL_RESERVATION room) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into TBL_RESERVATION (ROOMNAME,STARTTIME,DEADLINE,NAME,PHON,PENSIONID,USERID,ROOM,PEOPLE,DAY,TOTALPRICE) values(?,?,?,?,?,?,?,?,?,?,?)");
				pstmt.setString(1, room.getRoomname());
				pstmt.setString(2, room.getStarttime());
				pstmt.setString(3, room.getDeadline());
				pstmt.setString(4, room.getName());
				pstmt.setString(5, room.getPhon());
				pstmt.setString(6, room.getPensionid());
				pstmt.setString(7, room.getUserid());
				pstmt.setString(8, room.getRoom());
				pstmt.setString(9, room.getPeople());
				pstmt.setLong(10, room.getDay());
				pstmt.setLong(11, room.getTotalprice());
				return pstmt;
			}
		});
	}	
	public List<TBL_RESERVATION> reservationlist(String userid) {
		List<TBL_RESERVATION> reservationlist;
		if(userid.equals("admin")) {
			reservationlist =jdbcTemplate.query("Select * from TBL_RESERVATION", 
					
					new RowMapper<TBL_RESERVATION>() {
					@Override
					public TBL_RESERVATION mapRow(ResultSet rs, int rowNum) throws SQLException{
						TBL_RESERVATION reservation = new TBL_RESERVATION(
								rs.getString("RESERVATIONNUM"),
								rs.getString("ROOMNAME"),
								rs.getString("STARTTIME"),
								rs.getString("DEADLINE"),
								rs.getString("NAME"),
								rs.getString("PHON"),
								rs.getString("PENSIONID"),
								rs.getString("USERID"),
								rs.getString("ROOM"),
								rs.getString("PEOPLE"),
								rs.getLong("DAY"),
								rs.getLong("TOTALPRICE"));
						reservation.setUserid(rs.getString("userid"));
						return reservation;		
					}
					
				});
		}
		else {
			reservationlist =jdbcTemplate.query("Select * from TBL_RESERVATION where USERID= ?", 
			
				new RowMapper<TBL_RESERVATION>() {
				@Override
				public TBL_RESERVATION mapRow(ResultSet rs, int rowNum) throws SQLException{
					TBL_RESERVATION reservation = new TBL_RESERVATION(
							rs.getString("RESERVATIONNUM"),
							rs.getString("ROOMNAME"),
							rs.getString("STARTTIME"),
							rs.getString("DEADLINE"),
							rs.getString("NAME"),
							rs.getString("PHON"),
							rs.getString("PENSIONID"),
							rs.getString("USERID"),
							rs.getString("ROOM"),
							rs.getString("PEOPLE"),
							rs.getLong("DAY"),
							rs.getLong("TOTALPRICE"));
					reservation.setUserid(rs.getString("userid"));
					return reservation;		
				}
				
			},userid);
		}
			return reservationlist;
	}
}
















