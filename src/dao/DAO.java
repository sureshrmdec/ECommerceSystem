package dao;

import java.util.Map;

import DB.DB;

import domain.Computer;

public class DAO {

	public Map getAll(){		
		return DB.getAll();
	}
	
	public Computer find(String id){
		
		return (Computer)DB.getAll().get(id);
	}
}
