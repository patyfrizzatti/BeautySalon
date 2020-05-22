package ie.com.cct.BeautySalon.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Class responsible to format values
 * 
 * @author User
 *
 */
public class Formatter {

	public static LocalDateTime parseStringToLocalDateTime(String date) {
		DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");
		LocalDateTime dateTime = LocalDateTime.parse(date, inputFormatter);
		return dateTime;
	}
	
	public static String parseLocalDateTimeToString(LocalDateTime date) {
		StringBuilder sb = new StringBuilder();
		sb.append(date.getHour() + ":00 ");
		sb.append(date.getDayOfMonth() + "/"
				+ date.getMonthValue() + "/"
				+ date.getYear());
		return sb.toString();
	}

	public static Object formatterDouble(double total) {
		return String.format("%.2f", total);
	}

}
