package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderinfoVO {
	private int ono;
    private String ordernum;
    private int mno;
    private int pno;
    private String pname;
    private int ocnt;
    private char ship;
    private Date orderdate;
}