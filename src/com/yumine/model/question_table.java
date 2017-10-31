package com.yumine.model;

public class question_table {
	private int id;
	private String text;
	private String A;
	private String B;
	private String C;
	private String D;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getA() {
		return A;
	}

	public void setA(String a) {
		A = a;
	}

	public String getB() {
		return B;
	}

	public void setB(String b) {
		B = b;
	}

	public String getC() {
		return C;
	}

	public void setC(String c) {
		C = c;
	}

	public String getD() {
		return D;
	}

	public void setD(String d) {
		D = d;
	}

	@Override
	public String toString() {
		return "question_table [id=" + id + ", text=" + text + ", A=" + A + ", B=" + B + ", C=" + C + ", D=" + D + "]";
	}

	public question_table(int id, String text, String a, String b, String c, String d) {
		super();
		this.id = id;
		this.text = text;
		A = a;
		B = b;
		C = c;
		D = d;
	}

	public question_table() {
		super();
	}

}
