// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team;

import com.mcf.team.Privilege;

privileged aspect Privilege_Roo_JavaBean {
    
    public String Privilege.getPrivilegeId() {
        return this.privilegeId;
    }
    
    public void Privilege.setPrivilegeId(String privilegeId) {
        this.privilegeId = privilegeId;
    }
    
    public String Privilege.getPrivilegeName() {
        return this.privilegeName;
    }
    
    public void Privilege.setPrivilegeName(String privilegeName) {
        this.privilegeName = privilegeName;
    }
    
}
