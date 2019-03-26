package com.DateTime;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CalculateDate {

	public static void main(String[] args) {

		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss'Z'");

		LocalDateTime now = LocalDateTime.now();
		LocalDateTime then = now.minusDays(6);
		
		int date= now.compareTo(then);
		
		System.out.println(+date);

		System.out.println(String.format("Now:  %s\nThen: %s", now.format(format), then.format(format)));
	}

}
