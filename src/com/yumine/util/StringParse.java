package com.yumine.util;



import java.util.regex.Pattern;

import com.yumine.model.question_table;

public class StringParse {
	public question_table parse(String input) {
		String regexString = "(\\.)|A:|B:|C:|D:";
		Pattern pattern = Pattern.compile(regexString);
		String[] result = pattern.split(input);
		
		int id = Integer.parseInt(result[0]);
		String text = result[1];
		String A = result[2];
		String B = result[3];
		String C = result[4];
		String D = result[5];
		
		question_table qt = new question_table(id, text, A, B, C, D);
		//System.out.println(qt);
		System.out.println(qt.getId()+" " + qt.getText() + " " + qt.getA());
		return qt;
	}
	
}
