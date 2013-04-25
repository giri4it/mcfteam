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
public class Team {

    private String teamId;

    private String teamName;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Player> players = new HashSet<Player>();
}
