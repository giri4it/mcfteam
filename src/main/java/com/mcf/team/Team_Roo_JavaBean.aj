// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team;

import com.mcf.team.Player;
import com.mcf.team.Team;
import java.util.Set;

privileged aspect Team_Roo_JavaBean {
    
    public String Team.getTeamId() {
        return this.teamId;
    }
    
    public void Team.setTeamId(String teamId) {
        this.teamId = teamId;
    }
    
    public String Team.getTeamName() {
        return this.teamName;
    }
    
    public void Team.setTeamName(String teamName) {
        this.teamName = teamName;
    }
    
    public Set<Player> Team.getPlayers() {
        return this.players;
    }
    
    public void Team.setPlayers(Set<Player> players) {
        this.players = players;
    }
    
}