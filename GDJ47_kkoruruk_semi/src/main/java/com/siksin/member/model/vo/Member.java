package com.siksin.member.model.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Member {
	private String memId;
	private String memName;
	private String memPwd;
	private String memEmail;
	private String memNick;
	private int memPoint;
	private String memPhone;
	private String memRank;
	private String role;

}
