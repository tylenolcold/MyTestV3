package com.yumine.test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.yumine.model.question_table;
import com.yumine.service.Service;
import com.yumine.util.StringParse;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		question_table qt = new question_table(1,"Hello world1", "AAA", "BBB", "CCC", "DDD");
//		question_table qt2 = new question_table(2,"Hello world2", "AAA", "BBB", "CCC", "DDD");
//		question_table qt3 = new question_table(3,"Hello world3", "AAA", "BBB", "CCC", "DDD");
//		question_table qt4 = new question_table(4,"Hello world4", "AAA", "BBB", "CCC", "DDD");
//		Service service = new Service();
//		service.addQuestion(qt);
//		service.DeleteQuestion(1);
//		service.addQuestion(qt2);
//		service.addQuestion(qt3);
//		service.addQuestion(qt4);
//		List all = service.queryAllQuestion();
//		Iterator iter = all.iterator();
//		while (iter.hasNext()) {
//			question_table q = (question_table)iter.next();
//			System.out.println(q);
//		}
//		question_table question = service.QueryQuestionById(3);
//		System.out.println(question);
		StringParse sp = new StringParse();
		sp.parse("2.Hello world2A:AAAB:BBBC:CCCD:DDD");
		
	}

}
