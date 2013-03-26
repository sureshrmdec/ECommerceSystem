package utils;

import java.util.Properties;
import java.util.ResourceBundle;
/**
 * 读取配置文件
 *
 */
public class ConfigInfo {
	
	private static ResourceBundle cache = null;
	
	static{
		try {
			cache=ResourceBundle.getBundle("merchantInfo");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 获取指定key的值
	 */
	public static String getValue(String key){
		String str =  cache.getString(key);
		return str;
	}
}
