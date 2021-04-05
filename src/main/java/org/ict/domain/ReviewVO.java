package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private int rno;
	private String rtitle;
	private String rcontent;
	private int mno;
	private String mid;
	private int pno;
	private String pname;
	private String pimg;
	private String rimg1;
	private String rimg2;
	private String rimg3;
	private Date rwritedate;
	private Date rupdatedate;
}