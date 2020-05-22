package ie.com.cct.BeautySalon.controller.form;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

import ie.com.cct.BeautySalon.model.Booking;

public class BookingDTO {

	private String title;
	private String start;
	private String end;

	public BookingDTO(String title, String start, String end) {
		this.title = title;
		this.start = start;
		this.end = end;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public static BookingDTO transformer(Booking booking) {
		LocalDateTime schedule = booking.getSchedule();
		String start = parseToStringDate(schedule);
		
		schedule = schedule.plus(1, ChronoUnit.HOURS);
		String end = parseToStringDate(schedule);

		return new BookingDTO(booking.getService().getName() + " - " + booking.getProfessional(), start, end);
	}

	private static String parseToStringDate(LocalDateTime schedule) {
		String year = String.valueOf(schedule.getYear());
		String month = String.valueOf(schedule.getMonthValue());
		month = month.length() == 1 ? "0" + month : month;
		String day = String.valueOf(schedule.getDayOfMonth());
		String hour = String.valueOf(schedule.getHour());
		return year + "-" + month + "-" + day + "T" + hour + ":00:00.000";
	}

}
