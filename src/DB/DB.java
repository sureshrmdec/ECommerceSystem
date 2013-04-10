package db;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import domain.Computer;

public class DB {
private static Map map = new LinkedHashMap();
	
	static{
		map.put("1", new Computer("1","Ultrabook","Dell",10000,"11"));
		map.put("2", new Computer("2","Ultrabook","Lenovo",11500,"13"));
		map.put("3", new Computer("3","Laptop","Lenovo",4000,"15"));
		map.put("4", new Computer("4","Laptop","Asus",3000,"15"));
		map.put("5", new Computer("5","Ultrabook","Lenovo",8000,"11"));
		map.put("6", new Computer("6","Laptop","Dell",0.01,"15"));
		map.put("7", new Computer("7","Ultrabook","Asus",11000,"13"));
		map.put("8", new Computer("8","Ultrabook","Samsung",11500,"13"));
		map.put("9", new Computer("9","Ultrabook","Lenovo",8000,"13"));
		map.put("10", new Computer("10","Laptop","Asus",3000,"11"));
		map.put("11", new Computer("11","Ultrabook","Lenovo",8000,"11"));
		map.put("12", new Computer("12","Laptop","Samsung",0.01,"15"));
	}
	
	public static Map getAll(){
		return map;
	}
	
	public static Map getBrand(String brand) {
		Map map2 = new LinkedHashMap();
		Set<Map.Entry<String,Computer>> entrySet = map.entrySet();
		Iterator it = entrySet.iterator();
		int i=1;
		while(it.hasNext()){
			Map.Entry<String, Computer> entry = (Entry<String, Computer>) it.next();
			Computer c = entry.getValue();
			
			if(brand.equals( c.getBrand())){
				map2.put(i+"", c);
				i++;
			}
		}
		return map2;
	}	
}
