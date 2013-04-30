package com.mcf.team;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Profile {

    private String profileId;

    private String userName;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<UserRole> roles = new HashSet<UserRole>();

    private Boolean isManager;
}
