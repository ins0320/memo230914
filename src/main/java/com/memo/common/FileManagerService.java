package com.memo.common;

import java.io.File;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component // spring bean
public class FileManagerService {

	// 실제 업로드된 이미지가 저장될 경로( 서버)
	public static final String FILE_UPLOAD_PATH="D:\\김유정\\6_springProject\\memo\\workspace\\images/";
	
	// input:File 원본, userLoginId(폴더명) output: 이미지 경로
	public String saveFile(String loginId, MultipartFile file) {
		// 폴더(디렉토리) 생성
		// 예: aaaa_1823478932/sun.png
		String directoryName = loginId + "_" + System.currentTimeMillis();
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			// 폴더 생성 실패 시 이미지 경로 null 리턴
			return null;
		}
		return null;
	}
	
}
