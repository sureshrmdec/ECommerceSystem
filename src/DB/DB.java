package DB;

import java.util.LinkedHashMap;
import java.util.Map;

import domain.Computer;

//represent DB
public class DB {
	private static Map map = new LinkedHashMap();
	
	static{
		map.put("1", new Computer("1","超级本","Dell",10000,"win8"));
		map.put("2", new Computer("2","超级本","Toshiba",11500,"win8"));
		map.put("3", new Computer("3","平板","Lenovo",4000,"win8"));
		map.put("4", new Computer("4","普通本","Asus",3000,"win8"));
		map.put("5", new Computer("5","超级本","Sumsung",8000,"win8"));
		map.put("6", new Computer("6","普通本","Dell",4600,"win8"));
	}
	
	public static Map getAll(){
		return map;
	}	
}
