package com.bigdata2019.guestbook.vo;

public class GuestbookVo {
	private Long noLong;
	private String name;
	private String password;
	private String contents;
	private String regDate;
	public Long getNoLong() {
		return noLong;
	}
	public void setNoLong(Long noLong) {
		this.noLong = noLong;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
	@Override
	public String toString() {
		return "GuestbookVo [noLong=" + noLong + ", name=" + name + ", password=" + password + ", contents=" + contents
				+ ", regDate=" + regDate + "]";
	}
	
	

}
