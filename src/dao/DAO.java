package dao;

import java.util.Map;

import db.DB;
import domain.Computer;

public class DAO {
	public Map getAll(){		
		return DB.getAll();
	}
	
	public Map getBrand(String brand) {
		
		return DB.getBrand(brand);
	}
	
	public Computer find(String id){
		
		return (Computer)DB.getAll().get(id);
	}
}
