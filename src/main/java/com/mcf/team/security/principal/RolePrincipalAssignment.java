package com.mcf.team.security.principal;

import com.mcf.team.UserRole;
import com.mcf.team.security.Principal;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "security_role_assignments")
public class RolePrincipalAssignment {

    @ManyToOne
    private Principal username;

    @ManyToOne
    private UserRole roleId;
}
