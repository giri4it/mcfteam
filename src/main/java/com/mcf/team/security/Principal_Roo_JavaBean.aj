// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.security;

import com.mcf.team.security.Principal;

privileged aspect Principal_Roo_JavaBean {
    
    public String Principal.getUsername() {
        return this.username;
    }
    
    public void Principal.setUsername(String username) {
        this.username = username;
    }
    
    public String Principal.getPassword() {
        return this.password;
    }
    
    public void Principal.setPassword(String password) {
        this.password = password;
    }
    
    public Boolean Principal.getEnabled() {
        return this.enabled;
    }
    
    public void Principal.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
}