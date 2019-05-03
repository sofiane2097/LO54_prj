/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.entities;

import java.io.Serializable;

/**
 *
 * @author kezraidi
 */
public class Location implements Serializable {
    private Long idLocation;
    private String city;

    public Long getIdLocation() {
        return idLocation;
    }

    public void setIdLocation(Long idLocation) {
        this.idLocation = idLocation;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Location(Long idLocation, String city) {
        this.idLocation = idLocation;
        this.city = city;
    }

    public Location() {
    }
    
    
}
