package com.mcf.team;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Manager {

    @OneToOne
    @JoinColumn(name = "profileId")
    private Profile profile;
}