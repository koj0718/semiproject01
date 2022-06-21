package com.siksin.common;

import java.util.Calendar;

public class RndOrderNum {
	
	// 랜덤번호 생성 클래스(import에 필요)
	public static String rndorderNum() {
		
		Calendar cal=Calendar.getInstance();
		
		// 현재날짜
		int y=cal.get(Calendar.YEAR);
		int m=cal.get(Calendar.MONTH)+1;
		int d=cal.get(Calendar.DATE);
		
		// 가변성+연산을 적게하기 위해(메모리할당, 부하 적게) StringBuilder를 사용하지만
		// 소규모 프로젝트에서는 String을 사용해도 상관없음
		StringBuilder sb=new StringBuilder();
		sb.append(y).append(m).append(d);
		
		// 랜덤 수 10자리
		for (int i=0;i<10;i++) {
			int rnd=(int)(Math.random()*10);
			sb.append(rnd);
		}
		return sb.toString();
	}

}
