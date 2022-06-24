package com.common.encrypt;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

public class AESEncrypt { // 암호화 클래스
	
	private static SecretKey key;
	private String path;
	
	public AESEncrypt() {
		
		// 키 값 셋팅
		this.path=AESEncrypt.class.getResource("/").getPath();
		this.path=this.path.substring(0, this.path.indexOf("classes")); //WEB-INF폴더에 저장
		
		System.out.println(this.path);
		
		File keyFile=new File(path+"/Encrypt.pe");
		
		if(keyFile.exists()) {
			
			// 파일이 있다면 -> 그 파일에서 key값을 가져옴
			try(ObjectInputStream ois=new ObjectInputStream(new FileInputStream(keyFile))) {
				this.key=(SecretKey)ois.readObject();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else {
			// 파일이 없다면 -> key를 생성하기.
			getGenerateKey();
		}
	}
	
	private void getGenerateKey() { // SecretKey 생성, 파일로 저장해주는 메소드

		
		SecureRandom rnd=new SecureRandom(); // 키생성에 대한 랜덤값 가져오기
		
		// KeyGenerator클래스를 이용해서 암호화키를 생성
		KeyGenerator keygen=null;
		ObjectOutputStream oos=null;
		try {
			keygen=KeyGenerator.getInstance("AES");
			keygen.init(128,rnd);
			this.key=keygen.generateKey();
			File key=new File(this.path+"/Encrypt.pe");
			oos=new ObjectOutputStream(new FileOutputStream(key));
			oos.writeObject(this.key);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(oos!=null) oos.close();
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static String encrypt(String oriData) throws Exception { // 암호화 기능 구현
		
		//암호화처리 - Cipher 객체 생성
		Cipher cipher=Cipher.getInstance("AES");
		cipher.init(Cipher.ENCRYPT_MODE, AESEncrypt.key);
		
		byte[] enctemp=oriData.getBytes(Charset.forName("UTF-8"));
		byte[] encResult=cipher.doFinal(enctemp);
		
		return Base64.getEncoder().encodeToString(encResult);
		
	}
	
	public static String decrypt(String encData) throws Exception { // 복호화 기능 구현
		
		// 복호화처리
		Cipher cipher=Cipher.getInstance("AES");
		cipher.init(Cipher.DECRYPT_MODE, AESEncrypt.key);
		
		byte[] dectemp=Base64.getDecoder().decode(encData.getBytes(Charset.forName("UTF-8")));
		byte[] decResult=cipher.doFinal(dectemp);
		
		return new String(decResult);
	}

}
