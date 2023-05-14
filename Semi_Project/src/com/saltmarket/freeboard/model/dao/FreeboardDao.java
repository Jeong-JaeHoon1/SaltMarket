package com.saltmarket.freeboard.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.saltmarket.common.JDBCTemplate;
import com.saltmarket.common.model.vo.ImgFile;
import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.common.model.vo.Reply;
import com.saltmarket.common.model.vo.SearchInfo;
import com.saltmarket.freeboard.model.vo.Freeboard;

public class FreeboardDao {

	private Properties prop = new Properties();

	public FreeboardDao() {

		String fileName = FreeboardDao.class.getResource("/sql/freeboard/freeboard-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public int selectListCount(Connection conn, SearchInfo si) {

		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null; 

		try {

			if(si.getKind().equals("null")) {

				sql = prop.getProperty("selectListCount");
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				rset = pstmt.executeQuery();

			} else {

				if(si.getKind().equals("title")) {
					sql = prop.getProperty("selectTitleSearchListCount");
				} else if(si.getKind().equals("name")) {
					sql = prop.getProperty("selectNameSearchListCount");
				}
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				pstmt.setString(3, "%" + si.getKeyword() + "%");
				rset = pstmt.executeQuery();
			}
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT"); // 별칭으로도 데이터 뽑기 가능
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listCount;
	}

	public ArrayList<Freeboard> selectList(Connection conn, PageInfo pi, SearchInfo si) {

		ArrayList<Freeboard> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null;

		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = pi.getCurrentPage() * pi.getBoardLimit();

		try {

			if(si.getKind().equals("null")) {
				
				sql = prop.getProperty("selectList");
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
				rset = pstmt.executeQuery();
				
			} else {
				
				if(si.getKind().equals("title")) {
					sql = prop.getProperty("selectTitleSearchList");
				} else if(si.getKind().equals("name")) {
					sql = prop.getProperty("selectNameSearchList");
				}
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				pstmt.setString(3, "%" + si.getKeyword() + "%");
				pstmt.setInt(4, startRow);
				pstmt.setInt(5, endRow);
				rset = pstmt.executeQuery();
			}
			
			while(rset.next()) {
				list.add(new Freeboard(rset.getInt("FREE_BOARD_NO")
												, rset.getString("USER_NAME")
												, rset.getString("BOARD_TITLE")
												, rset.getDate("CREATED_DATE")
												, rset.getInt("BOARD_VIEWS")
												, rset.getString("CATEGORY")
												, rset.getInt("REPLYCOUNT")
												));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	public ArrayList<Freeboard> selectBestList(Connection conn, String category) {
		
		ArrayList<Freeboard> bestList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setString(2, category);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				bestList.add(new Freeboard(rset.getInt("FREE_BOARD_NO")
												  , rset.getString("BOARD_TITLE")
												  , rset.getInt("BOARD_VIEWS")
												  , rset.getInt("REPLYCOUNT")
												  ));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return bestList;
	}
	
	public int increaseCount(Connection conn, int boardNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public Freeboard selectBoard(Connection conn, int boardNo) {
		
		Freeboard fb = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				fb = new Freeboard(rset.getInt("FREE_BOARD_NO")
											, rset.getInt("USER_NO")
											, rset.getString("USER_NAME")
											, rset.getString("BOARD_TITLE")
											, rset.getString("BOARD_CONTENT")
											, rset.getDate("CREATED_DATE")
											, rset.getInt("BOARD_VIEWS")
											, rset.getString("CATEGORY")
											, rset.getInt("REPLYCOUNT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return fb;
	}
	
	public ArrayList<ImgFile> selectImgFile(Connection conn, int boardNo) {
		
		ArrayList<ImgFile> imgList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectImgFile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();

			while(rset.next()) {

				ImgFile img = new ImgFile();

				img.setFileNo(rset.getInt("FILE_NO"));
				img.setOriginName(rset.getString("ORIGIN_NAME"));
				img.setChangeFileName(rset.getString("CHANGE_FILE_NAME"));
				img.setFilePath(rset.getString("FILE_PATH"));
				imgList.add(img);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return imgList;
	}
	
	
	public int insertBoard(Connection conn, Freeboard fb) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("insertBoard");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(fb.getUserName()));
			pstmt.setString(2, fb.getBoardTitle());
			pstmt.setString(3, fb.getBoardContent());
			pstmt.setString(4, fb.getCategory());
			result = pstmt.executeUpdate();
			
			// 게시글이 작성되면 DB에 추가 후 포워딩에 사용 할 게시글번호를 담기
			if(result > 0) {
	            sql = "SELECT SEQ_FREE_BOARD.CURRVAL FROM DUAL";
	            pstmt = conn.prepareStatement(sql);
	            rset = pstmt.executeQuery();
	            if (rset.next()) {
	                fb.setFreeboardNo(rset.getInt(1));
	            }
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int insertImgFile(Connection conn, ArrayList<ImgFile> imgList) {
		
		// 이미지가 여러개므로 곱으로 결과값을 얻어내기위해 1로 초기화
		int result = 1;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertImgFile");
		
		try {
			for(ImgFile img : imgList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, img.getOriginName());
				pstmt.setString(2, img.getChangeFileName());
				pstmt.setString(3, img.getFilePath());
				pstmt.setInt(4, img.getFileLevel());
				// DML(Data Manipulation Language) 요청이 잘되었다면 누적곱으로 결과 담기
				result *= pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int updateBoard(Connection conn, Freeboard fb) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fb.getBoardTitle());
			pstmt.setString(2, fb.getBoardContent());
			pstmt.setString(3, fb.getCategory());
			pstmt.setInt(4, fb.getFreeboardNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	
	public int deleteImgFile(Connection conn, ArrayList<ImgFile> deleteImgList) {
		
		// 이미지가 여러 개일 수 있으므로 곱으로 결과값을 얻어내기 위해 1로 초기화
		int result = 1;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteImgFile");
		
		try {
			// 첨부파일 개수만큼 반복 돌리기
			for(ImgFile img : deleteImgList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, img.getFileNo());
				// DML(Data Manipulation Language) 요청이 잘되었다면 누적곱으로 결과 담기
				result *= pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int updateImgFile(Connection conn, Freeboard fb, ArrayList<ImgFile> updateImgList) {
		
		// 이미지가 여러 개일 수 있으므로 곱으로 결과값을 얻어내기 위해 1로 초기화
		int result = 1;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateImgFile");
		
		try {
			// 첨부파일 개수 만큼 반복 돌리기
			for(ImgFile img : updateImgList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, fb.getFreeboardNo());
				pstmt.setString(2, img.getOriginName());
				pstmt.setString(3, img.getChangeFileName());
				pstmt.setString(4, img.getFilePath());
				pstmt.setInt(5, img.getFileLevel());
				// DML(Data Manipulation Language) 요청이 잘되었다면 누적곱으로 결과 담기
				result *= pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int deleteBoard(Connection conn, int boardNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int insertReply(Connection conn, Reply r) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getFreeboardNo());
			pstmt.setString(2, r.getReplyContent());
			pstmt.setInt(3, r.getUserNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Reply> selectReplyList(Connection conn, int boardNo) {
		
		ArrayList<Reply> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReplyList");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Reply(rset.getInt("REPLY_NO")
										  , rset.getInt("USER_NO")
										  , rset.getString("USER_NAME")
										  , rset.getString("REPLY_CONTENT")
										  , rset.getString("CREATED_DATE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	public int delectReply(Connection conn, int replyNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, replyNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}	
	
	public int updateReply(Connection conn, Reply r) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, r.getReplyContent());
			pstmt.setInt(2, r.getReplyNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public Freeboard selectLike(Connection conn, int boardNo) {
		
		Freeboard fb = new Freeboard();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				fb.setLikeCount(rset.getInt("LIKE_COUNT"));
				fb.setDislikeCount(rset.getInt("DISLIKE_COUNT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return fb;
	}
	
	public int updateLike(Connection conn, int boardNo, String type) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = "";
		if(type.equals("like")) {
			sql = prop.getProperty("updateLike");
		} else if(type.equals("dislike")) {
			sql = prop.getProperty("updateDislike");
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	
}











