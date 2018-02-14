package yummyhome.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期格式处理的工具类
 * 
 * @author Administrator
 *
 */
public class DateUtils {

	public static String format(Date date, String pattern) {
		DateFormat df = new SimpleDateFormat(pattern);
		String dateStr = null;

		dateStr = df.format(date);

		return dateStr;

	}
}
