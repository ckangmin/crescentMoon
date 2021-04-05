package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class QnaVO {
	
	private int qno;
	private String qtitle;
	private int mno;
	private String mid;
	private String qcontent;
	private Date qwritedate;
	private Date qupdatedate;
}