package ex03;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class FileUtil {
	
	private static FileUtil instance = new FileUtil();
	public static FileUtil getInstance() { return instance; }
	public FileUtil() { 
		File dir = new File(saveDirectory);
		dir.mkdirs();
		// 초기화되지 않도록 기본 생성자에 처음 파일 만드는 것으로 바꿔줬음
	}
	
//	private String saveDirectory;
	private String saveDirectory = "C:\\upload";
	private final int maxPostSize = 1024 * 1024 * 50;
	private final String encoding = "UTF-8";
	private final FileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	public ReviewDTO getDTO(HttpServletRequest request) throws IOException, ParseException {
		ReviewDTO dto = null;
//		if(saveDirectory == null) {
//			ServletContext application = request.getServletContext();
//			saveDirectory = application.getRealPath("/reviewImage");
//			// 서버가 초기화됐을 경우에 업로드 된 그림파일들도 초기화 된다. 따라서 위 방식을 쓰는 대신 다른 방식을 사용한다
//			
//			File dir = new File(saveDirectory);
//			dir.mkdirs();
//		}
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy
		);
		
		dto = new ReviewDTO();
		dto.setContent(mpRequest.getParameter("content"));
		dto.setImage(mpRequest.getFile("image").getName());
		dto.setStoreName(mpRequest.getParameter("storeName"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		long time = sdf.parse(mpRequest.getParameter("visitDate")).getTime();
		dto.setVisitDate(new java.sql.Date(time));
		
		return dto;
	}

}
