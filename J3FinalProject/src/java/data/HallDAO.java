/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import data.DBManager;
import beans.Hall;
import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author neilf
 */
public class HallDAO {
    public void createHall(Hall hall){
        DBManager dbm = new DBManager();
        String sql1="INSERT INTO bookingsystem_db.hall (Name)";
        String sql2="VALUES ('"+hall.getName()+"');";
        String sql=sql1+sql2;
        System.out.println("createhall sql is:"+sql);
        dbm.executeUpdate(sql);        
    }
    
    public void updateHall(Hall hall){
        DBManager dbm = new DBManager();
        String sql1="UPDATE bookingsystem_db.hall SET";
        String sql2=" Name='"+hall.getName()+"'";
        String sql3=" WHERE hall.ID="+hall.getID()+";";
        String sql=sql1+sql2+sql3;
        System.out.println("updateHall SQL is: "+sql);
        dbm.executeUpdate(sql);        
    }
    
    public void deleteHallByID(int hallID){
        DBManager dbm = new DBManager();
        String sql1="DELETE FROM bookingsystem_db.hall";
        String sql2=" WHERE hall.ID="+hallID+";";
        String sql=sql1+sql2;
        System.out.println("deleteHallByID sql is:"+sql);
        dbm.executeUpdate(sql);        
    }
    
    public ArrayList<Hall> retrieveAllHalls(){
        ArrayList<Hall> halls = new ArrayList<Hall>();
        DBManager dbm = new DBManager();
        ResultSet rs = dbm.executeQuery("SELECT * FROM bookingsystem_db.hall");
        try{
            while(rs.next()){
                Hall h = new Hall();
                h.setName(rs.getString("Name"));
                h.setID(rs.getInt("ID"));
                halls.add(h);
            }
        }catch(Exception e){
            System.out.println("Error retrieving all halls"+e);
        }
        return halls;        
    }
    
    public Hall retrieveHallByID(int ID){
        Hall h = null;
        try{
            DBManager dbm = new DBManager();
            String sql = "SELECT * FROM bookingsystem_db.hall where hall.ID = "+ID+";";
            System.out.println("retrieveHallByID sql is:"+ sql);
            ResultSet rs = dbm.executeQuery(sql);
            if(rs.next()){
                h = new Hall();
                h.setName(rs.getString("Name"));
                h.setID(rs.getInt("ID"));
            }
        }catch(Exception e){
            System.out.println("Error retrieving hall:"+e);
        }
        return h;        
    }

}
