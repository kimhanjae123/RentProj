package dto;

import java.util.Date;

public class Review {

	Integer no;
	Integer memberNo;
	String title;
	String contents;
	Integer score;
	Date date;
	Integer productNo;
	String memberNickname;
	
	String img1;
	
	
	public String getImg() {
		return img1;
	}
	public void setImg(String img) {
		this.img1 = img;
	}
	public Review(){}
	public Review(Integer memberNo,String contents,Integer score,Integer productNo,String memberNickname){
		this.memberNo = memberNo;
		this.contents = contents;
		this.score = score;
		this.productNo = productNo;
		this.memberNickname = memberNickname;
	}
	
	public Review(Integer no,String contents,Integer score,Date date) {
		this.no = no;
		this.contents = contents;
		this.score = score;
		this.date = date;
	}
	

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(Integer memberNo) {
		this.memberNo = memberNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getProductNo() {
		return productNo;
	}

	public void setProductNo(Integer productNo) {
		this.productNo = productNo;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	
	
	
}
