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
public class Participe implements Serializable{

    private Long idClient;
    private Long idSession;

    public Long getIdClient() {
        return idClient;
    }

    public void setIdClient(Long idClient) {
        this.idClient = idClient;
    }

    public Long getIdSession() {
        return idSession;
    }

    public void setIdSession(Long idSession) {
        this.idSession = idSession;
    }

    public Participe() {
    }

    public Participe(Long idClient, Long idSession) {
        this.idClient = idClient;
        this.idSession = idSession;
    }

}
