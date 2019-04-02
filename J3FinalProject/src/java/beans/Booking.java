/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
/**
 *
 * @author neilf
 */
public class Booking implements Serializable{
    public Booking(){
        
    }
    private int ID;
    private int hallID;
    private int clientID;
    private String date;

    /**
     * @return the ID
     */
    public int getID() {
        return ID;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(int ID) {
        this.ID = ID;
    }

    /**
     * @return the hallID
     */
    public int getHallID() {
        return hallID;
    }

    /**
     * @param hallID the hallID to set
     */
    public void setHallID(int hallID) {
        this.hallID = hallID;
    }

    /**
     * @return the clientID
     */
    public int getClientID() {
        return clientID;
    }

    /**
     * @param clientID the clientID to set
     */
    public void setClientID(int clientID) {
        this.clientID = clientID;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }
}
