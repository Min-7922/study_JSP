package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() { return instance; }
	private MemberDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		}catch(NamingException e) { e.printStackTrace(); }
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {}
	}
	
	private MemberDTO mapping(ResultSet rs) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setIdx(rs.getInt("idx"));
		dto.setUserid(rs.getString("userid"));
		dto.setUserpw(rs.getString("userpw"));
		dto.setAge(rs.getInt("age"));
		return dto;
	}
	
	public List<MemberDTO> selectList() {
		ArrayList<MemberDTO> list = new ArrayList<>();
		String sql = "select member.*,"
				+ "	(select count(*) count from board where board.writer = member.userid) "
				+ "	as board_count,"
				+ "	(select count(*) count from reply where reply.writer = member.userid) "
				+ "	as reply_count"
				+ "	from member order by idx";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = mapping(rs);
				dto.setBoard_count(rs.getInt("board_count"));
				dto.setReply_count(rs.getInt("reply_count"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally { close(); }
		return list;
	}
	
	public int insert(MemberDTO dto) {
		int row = 0;
		String sql = "insert into member (userid, userpw, age) "
				+ "	values (?, ?, ?) ";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			pstmt.setInt(3, dto.getAge());
			row = pstmt.executeUpdate();
		}catch(SQLIntegrityConstraintViolationException e) {
			row = -1;
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}finally { close(); }
		return row;
	}
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO login = null;
		String sql = "select * from member where userid = ? and userpw = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				login = mapping(rs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally { close(); }
		return login;
	}
	
	public int delete(String userid) {
		int row = 0;
		String sql = "delete member where userid = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			row = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally { close(); }
		return row;
	}
	

	
	
}
