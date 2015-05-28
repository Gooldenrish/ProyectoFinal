/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daw.es.proyecto;

/**
 *
 * @author carlos
 */
public class User {
        private String	firstname;
        private String	lastname;
 
        public User() {
        }
 
        public User(String firstname, String lastname) {
                this.firstname = firstname;
                this.lastname = lastname;
 
        }

        public String getFirstname() {
        	return firstname;
        }

        public String getLastname() {
        	return lastname;
        }

        public void setFirstname(String firstname) {
        	this.firstname = firstname;
        }

        public void setLastname(String lastname) {
        	this.lastname = lastname;
        }
}