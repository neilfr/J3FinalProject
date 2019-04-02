/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.*;

/**
 *
 */
public class DBManager {
    String conn = "jdbc:mysql://localhost:3306/bookingsystem_db?autoReconnect=True&useSSL=false";
    String user = "root";
    String pass = "root";
    
    public Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(conn,user,pass);
            System.out.println("connected to bookingsystem_db");
            
        }catch(Exception e){
            System.out.println("error getting connection");
        }
        return con;
    }
    
    public ResultSet executeQuery(String sql){
        ResultSet rs=null;
        try{
            Connection con=getConnection();
            Statement st=con.createStatement();
            rs=st.executeQuery(sql);
            
        }catch(Exception e){
            System.out.println("error executing query: "+e);
        }
        return rs;
    }
    
    public int executeUpdate(String sql){
        int r=-1;
        try{
            Connection con = getConnection();
            Statement st=con.createStatement();
            r=st.executeUpdate(sql);
            
        }catch(Exception e){
            System.out.println("error executing query: "+e);
        }
        return r;
    }
}