package com.mcf.team;

import java.math.BigDecimal;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Player {

    private String playerId;

    private String playerName;

    @OneToOne
    @JoinColumn(name = "profileId")
    private Profile profile;

    @NotNull
    @DecimalMin("10")
    @DecimalMax("9999999.99")
    private BigDecimal initialCost;
}
