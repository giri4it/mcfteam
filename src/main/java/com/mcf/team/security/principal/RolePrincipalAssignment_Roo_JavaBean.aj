// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.security.principal;

import com.mcf.team.UserRole;
import com.mcf.team.security.Principal;
import com.mcf.team.security.principal.RolePrincipalAssignment;

privileged aspect RolePrincipalAssignment_Roo_JavaBean {
    
    public Principal RolePrincipalAssignment.getUsername() {
        return this.username;
    }
    
    public void RolePrincipalAssignment.setUsername(Principal username) {
        this.username = username;
    }
    
    public UserRole RolePrincipalAssignment.getRoleId() {
        return this.roleId;
    }
    
    public void RolePrincipalAssignment.setRoleId(UserRole roleId) {
        this.roleId = roleId;
    }
    
}
