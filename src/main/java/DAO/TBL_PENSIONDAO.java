package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DTO.TBL_PENSION;
@Repository
public class TBL_PENSIONDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void insert(final TBL_PENSION pension) {
		jdbcTemplate.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into TBL_PENSION (NAME,PRICE,ROOMNUMBER,MAXPEOPLE,ADDRESS,COMMENTS,CHECKIN,CHECKOUT,SERVICE,INSERVICE,IMAGE) values(?,?,?,?,?,?,?,?,?,?,?)");
				pstmt.setString(1, pension.getName());
				pstmt.setString(2, pension.getPrice());
				pstmt.setString(3, pension.getRoomnumber());
				pstmt.setString(4, pension.getMaxpeople());
				pstmt.setString(5, pension.getAddress());
				pstmt.setString(6, pension.getComments());
				pstmt.setString(7, pension.getCheckin());
				pstmt.setString(8, pension.getCheckout());
				pstmt.setString(9, pension.getService());
				pstmt.setString(10, pension.getInservice());
				pstmt.setString(11, pension.getImage());
				return pstmt;
			}
		});
	}

	public RowMapper<TBL_PENSION> memRowMapper = new RowMapper<TBL_PENSION>() {
		@Override
		public TBL_PENSION mapRow(ResultSet rs, int rowNum) throws SQLException {
			TBL_PENSION member = new TBL_PENSION(rs.getString("PENSIONID"), rs.getString("NAME"),
					rs.getString("ADDRESS"), rs.getString("PRICE"), rs.getString("ROOMNUMBER"),
					rs.getString("MAXPEOPLE"), rs.getString("COMMENTS"), rs.getString("CHECKIN"),
					rs.getString("CHECKOUT"), rs.getString("SERVICE"), rs.getString("INSERVICE"),
					rs.getString("IMAGE"));
			return member;
		}
	};

	public List<TBL_PENSION> allPension() {
		List<TBL_PENSION> reLists = jdbcTemplate.query("Select * from TBL_PENSION", memRowMapper);
		return reLists;
	}

	public int[] page(HttpServletRequest req) {
		int page = Integer.valueOf(req.getParameter("page"));
		int[] startEnd = new int[4];
		int totalPage = 0;
		int count = jdbcTemplate.queryForObject("select count(*) from TBL_PENSION", Integer.class);
		if (count == 0) {
			totalPage = 1;
		} else if (count % 6 == 0) {
			totalPage = count / 6;
		} else {
			totalPage = count / 6 + 1;
		}
		int startpage, endpage;

		if (page < 3) {
			startpage = 1;
			endpage = 5;
		} else {
			startpage = page - 2;
			endpage = startpage + 4;
		}
		if (totalPage < endpage) {
			endpage = totalPage;
		}
		if (page + 2 >= endpage && page > 5) {
			startpage = endpage - 4;
		}
		startEnd[0] = startpage;
		startEnd[1] = endpage;
		startEnd[2] = page;
		startEnd[3] = count;

		return startEnd;
	}
	public TBL_PENSION selectPension(String pensionid) throws IOException  {
		List<TBL_PENSION> results = jdbcTemplate.query("select * from TBL_PENSION where PENSIONID =?",
				new RowMapper<TBL_PENSION>() {

					@Override
					public TBL_PENSION mapRow(ResultSet rs, int rowNum) throws SQLException {
						TBL_PENSION member = new TBL_PENSION(rs.getString("PENSIONID"), rs.getString("NAME"), rs.getString("USERID"),
								rs.getString("ADDRESS"), rs.getString("COMMENTS"), rs.getString("PRICE"),
								rs.getString("ROOMNUMBER"),rs.getString("MAXPEOPLE"), rs.getString("CHECKIN"),rs.getString("CHECKOUT"),
								rs.getString("SERVICE"), rs.getString("INSERVICE"),rs.getString("IMAGE"));
						return member;
					}
		}, pensionid);
		return results.get(0);
		
	}
	public int select(MultipartRequest multi) throws IOException {	
		TBL_PENSION pension = new TBL_PENSION();
		pension.setName(multi.getParameter("name"));
		int a = jdbcTemplate.queryForObject("select count(*) from TBL_PENSION where NAME = ?", Integer.class, pension.getName());
		return a;
	}
}
