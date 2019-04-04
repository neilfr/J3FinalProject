/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import data.DBManager;
import beans.Booking;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author neilf
 */
public class BookingDAO {
    public void createBooking(Booking booking){
        DBManager dbm = new DBManager();
        String sql1="INSERT INTO bookingsystem_db.booking (HallID, ClientID, Date)";
        String sql2="VALUES ('"+booking.getHallID()+"', '"+booking.getClientID()+"', '"+booking.getDate()+"');";
        String sql=sql1+sql2;
        System.out.println("createBooking sql is:"+sql);
        dbm.executeUpdate(sql);
    }
    public void updateBooking(Booking booking){
        DBManager dbm = new DBManager();
        String sql1="UPDATE bookingsystem_db.booking SET";
        String sql2=" HallID="+booking.getHallID()+",";
        String sql3=" ClientID="+booking.getClientID()+",";
        String sql4=" Date='"+booking.getDate()+"'";
        String sql5=" WHERE booking.ID="+booking.getID()+";";
        String sql=sql1+sql2+sql3+sql4+sql5;
        System.out.println("updateBooking SQL is: "+sql);
        dbm.executeUpdate(sql);
    }

    public void deleteBookingByID(int bookingID){
        DBManager dbm = new DBManager();
        String sql1="DELETE FROM bookingsystem_db.booking";
        String sql2=" WHERE booking.ID="+bookingID+";";
        String sql=sql1+sql2;
        System.out.println("deleteBookingByID sql is:"+sql);
        dbm.executeUpdate(sql);
    }
    
    public ArrayList<Booking> retrieveAllBookings(){
        ArrayList<Booking> bookings = new ArrayList<Booking>();
        DBManager dbm = new DBManager();
        ResultSet rs = dbm.executeQuery("SELECT * FROM bookingsystem_db.booking");
        try{
            while(rs.next()){
                Booking b = new Booking();
                b.setID(rs.getInt("ID"));
                b.setHallID(rs.getInt("HallID"));
                b.setClientID(rs.getInt("ClientID"));
                b.setDate(rs.getString("Date"));
                bookings.add(b);
            }
        }catch(Exception e){
            System.out.println("Error retrieving all bookings"+e);
        }
        return bookings;
    }
    
    public Booking retrieveBookingByID(int ID){
        Booking b = null;
        try{
            DBManager dbm = new DBManager();
            String sql = "SELECT * FROM bookingsystem_db.booking where booking.ID = "+ID+";";
            System.out.println("retrieveBookingByID sql is:"+ sql);
            ResultSet rs = dbm.executeQuery(sql);
            if(rs.next()){
                b = new Booking();
                b.setID(Integer.parseInt(rs.getString("ID")));
                b.setHallID(Integer.parseInt(rs.getString("HallID")));
                b.setClientID(Integer.parseInt(rs.getString("ClientID")));
                b.setDate(rs.getString("Date"));
            }
        }catch(Exception e){
            System.out.println("Error retrieving booking:"+e);
        }
        return b;
    }
    
}
