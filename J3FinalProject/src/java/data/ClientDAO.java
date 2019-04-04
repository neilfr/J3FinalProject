/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import data.DBManager;
import beans.Client;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author neilf
 */
public class ClientDAO {
    public void createClient(Client client){
        DBManager dbm = new DBManager();
        String sql1="INSERT INTO bookingsystem_db.client (Name,CreditCard)";
        String sql2="VALUES ('"+client.getName()+"', '"+client.getCreditCard()+"');";
        String sql=sql1+sql2;
        System.out.println("createclient sql is:"+sql);
        dbm.executeUpdate(sql);
    }
    public void updateClient(Client client){
        DBManager dbm = new DBManager();
        String sql1="UPDATE bookingsystem_db.client SET";
        String sql2=" Name='"+client.getName()+"',";
        String sql3=" CreditCard='"+client.getCreditCard()+"'";
        String sql4=" WHERE client.ID="+client.getID()+";";
        String sql=sql1+sql2+sql3+sql4;
        System.out.println("updateClient SQL is: "+sql);
        dbm.executeUpdate(sql);
    }
    public void deleteClientByID(int clientID){
        DBManager dbm = new DBManager();
        String sql1="DELETE FROM bookingsystem_db.client";
        String sql2=" WHERE client.ID="+clientID+";";
        String sql=sql1+sql2;
        System.out.println("deleteClientByID sql is:"+sql);
        dbm.executeUpdate(sql);
    }
    public ArrayList<Client> retrieveAllClients(){
        ArrayList<Client> clients = new ArrayList<Client>();
        DBManager dbm = new DBManager();
        ResultSet rs = dbm.executeQuery("SELECT * FROM bookingsystem_db.client");
        try{
            while(rs.next()){
                Client c = new Client();
                c.setName(rs.getString("Name"));
                c.setCreditCard(rs.getString("CreditCard"));
                c.setID(rs.getInt("ID"));
                clients.add(c);
            }
        }catch(Exception e){
            System.out.println("Error retrieving all clients"+e);
        }
        return clients;
    }
    
    public Client retrieveClientByID(int ID){
        Client c = null;
        try{
            DBManager dbm = new DBManager();
            String sql = "SELECT * FROM bookingsystem_db.client where client.ID = "+ID+";";
            System.out.println("retrieveClientByID sql is:"+ sql);
            ResultSet rs = dbm.executeQuery(sql);
            if(rs.next()){
                c = new Client();
                c.setName(rs.getString("Name"));
                c.setCreditCard(rs.getString("CreditCard"));
                c.setID(rs.getInt("ID"));
            }
        }catch(Exception e){
            System.out.println("Error retrieving client:"+e);
        }
        return c;
    }

}
