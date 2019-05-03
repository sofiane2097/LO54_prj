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
public class Client implements Serializable{
    private Long idClient;
    private String lastName;
    private String firstName;
    private String adress;
    private String phone;
    private String email;

    public Long getIdClient() {
        return idClient;
    }

    public void setIdClient(Long idClient) {
        this.idClient = idClient;
    }

    

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Client(Long idClient, String lastName, String firstName, String adress, String phone, String email) {
        this.idClient = idClient;
        this.lastName = lastName;
        this.firstName = firstName;
        this.adress = adress;
        this.phone = phone;
        this.email = email;
    }

    public Client() {
    }
    
}
