package com.common.encrypt;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class PasswordEncrypt extends HttpServletRequestWrapper {
	
	public PasswordEncrypt(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String name) { // filter
		if(name.equals("password")||name.equals("password_new")) {
			return getSHA512(super.getParameter(name));
		}
		return super.getParameter(name);
	}
	
	private String getSHA512(String oriData) {
		
		// 단방향 암호화 SHA512알고리즘 적용하기
		String encData=""; // = 암호화 된 값을 저장하는 변수
		MessageDigest md=null;
		
		try {
			
			// 암호화 알고리즘을 선택
			md=MessageDigest.getInstance("SHA-512");
			
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		// 비트단위 연산을 위해 원본 데이터 -> byte[]로 전환
		byte[] oriDataByte=oriData.getBytes(Charset.forName("UTF-8"));
		
		// SHA-512 방식으로 암호화
		md.update(oriDataByte);
		byte[] changeData=md.digest();
		
		// Base64 인코더로 변환 끝난 데이터 -> 문자열 변경
		encData=Base64.getEncoder().encodeToString(changeData);
		
 		return encData;
 		
	}

}
