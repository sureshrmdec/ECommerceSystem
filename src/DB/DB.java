package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import db.JdbcUtils;

import domain.Computer;

public class DB {
private static Map map = new LinkedHashMap();
	
	static{

		Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

		try {
			conn = JdbcUtils.getConnection();
			String sql = "SELECT * FROM computers";
			ps = conn.prepareStatement(sql);
					
			rs = ps.executeQuery();
					
			while(rs.next()){
				String id = rs.getString("id");
				map.put(id, new Computer(id, rs.getString("name"),rs.getString("brand"),rs.getDouble("price"),rs.getString("description")));
			}
		}catch(Exception e){
			throw new RuntimeException(e);
		} finally{
			JdbcUtils.free(rs,ps,conn);
		}
	
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
