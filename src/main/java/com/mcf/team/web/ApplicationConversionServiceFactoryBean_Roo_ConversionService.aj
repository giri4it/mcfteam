// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.web;

import com.mcf.team.Bid;
import com.mcf.team.BidProject;
import com.mcf.team.Player;
import com.mcf.team.Privilege;
import com.mcf.team.Profile;
import com.mcf.team.Team;
import com.mcf.team.UserRole;
import com.mcf.team.repository.BidProjectRepository;
import com.mcf.team.security.Principal;
import com.mcf.team.security.principal.RolePrincipalAssignment;
import com.mcf.team.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    BidProjectRepository ApplicationConversionServiceFactoryBean.bidProjectRepository;
    
    public Converter<Bid, String> ApplicationConversionServiceFactoryBean.getBidToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.Bid, java.lang.String>() {
            public String convert(Bid bid) {
                return new StringBuilder().append(bid.getBidValue()).append(' ').append(bid.getBidDate()).toString();
            }
        };
    }
    
    public Converter<String, Bid> ApplicationConversionServiceFactoryBean.getIdToBidConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.Bid>() {
            public com.mcf.team.Bid convert(java.lang.String id) {
                return Bid.findBid(id);
            }
        };
    }
    
    public Converter<BidProject, String> ApplicationConversionServiceFactoryBean.getBidProjectToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.BidProject, java.lang.String>() {
            public String convert(BidProject bidProject) {
                return new StringBuilder().append(bidProject.getBidId()).append(' ').append(bidProject.getStartDate()).append(' ').append(bidProject.getEndDate()).toString();
            }
        };
    }
    
    public Converter<Long, BidProject> ApplicationConversionServiceFactoryBean.getIdToBidProjectConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.BidProject>() {
            public com.mcf.team.BidProject convert(java.lang.Long id) {
                return bidProjectRepository.findOne(id);
            }
        };
    }
    
    public Converter<String, BidProject> ApplicationConversionServiceFactoryBean.getStringToBidProjectConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.BidProject>() {
            public com.mcf.team.BidProject convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), BidProject.class);
            }
        };
    }
    
    public Converter<Player, String> ApplicationConversionServiceFactoryBean.getPlayerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.Player, java.lang.String>() {
            public String convert(Player player) {
                return new StringBuilder().append(player.getPlayerId()).append(' ').append(player.getPlayerName()).append(' ').append(player.getInitialCost()).toString();
            }
        };
    }
    
    public Converter<Long, Player> ApplicationConversionServiceFactoryBean.getIdToPlayerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.Player>() {
            public com.mcf.team.Player convert(java.lang.Long id) {
                return Player.findPlayer(id);
            }
        };
    }
    
    public Converter<String, Player> ApplicationConversionServiceFactoryBean.getStringToPlayerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.Player>() {
            public com.mcf.team.Player convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Player.class);
            }
        };
    }
    
    public Converter<Privilege, String> ApplicationConversionServiceFactoryBean.getPrivilegeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.Privilege, java.lang.String>() {
            public String convert(Privilege privilege) {
                return new StringBuilder().append(privilege.getPrivilegeId()).append(' ').append(privilege.getPrivilegeName()).toString();
            }
        };
    }
    
    public Converter<Long, Privilege> ApplicationConversionServiceFactoryBean.getIdToPrivilegeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.Privilege>() {
            public com.mcf.team.Privilege convert(java.lang.Long id) {
                return Privilege.findPrivilege(id);
            }
        };
    }
    
    public Converter<String, Privilege> ApplicationConversionServiceFactoryBean.getStringToPrivilegeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.Privilege>() {
            public com.mcf.team.Privilege convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Privilege.class);
            }
        };
    }
    
    public Converter<Profile, String> ApplicationConversionServiceFactoryBean.getProfileToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.Profile, java.lang.String>() {
            public String convert(Profile profile) {
                return new StringBuilder().append(profile.getProfileId()).append(' ').append(profile.getUserName()).toString();
            }
        };
    }
    
    public Converter<Long, Profile> ApplicationConversionServiceFactoryBean.getIdToProfileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.Profile>() {
            public com.mcf.team.Profile convert(java.lang.Long id) {
                return Profile.findProfile(id);
            }
        };
    }
    
    public Converter<String, Profile> ApplicationConversionServiceFactoryBean.getStringToProfileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.Profile>() {
            public com.mcf.team.Profile convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Profile.class);
            }
        };
    }
    
    public Converter<Team, String> ApplicationConversionServiceFactoryBean.getTeamToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.Team, java.lang.String>() {
            public String convert(Team team) {
                return new StringBuilder().append(team.getTeamId()).append(' ').append(team.getTeamName()).toString();
            }
        };
    }
    
    public Converter<Long, Team> ApplicationConversionServiceFactoryBean.getIdToTeamConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.Team>() {
            public com.mcf.team.Team convert(java.lang.Long id) {
                return Team.findTeam(id);
            }
        };
    }
    
    public Converter<String, Team> ApplicationConversionServiceFactoryBean.getStringToTeamConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.Team>() {
            public com.mcf.team.Team convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Team.class);
            }
        };
    }
    
    public Converter<UserRole, String> ApplicationConversionServiceFactoryBean.getUserRoleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.UserRole, java.lang.String>() {
            public String convert(UserRole userRole) {
                return new StringBuilder().append(userRole.getRoleId()).append(' ').append(userRole.getRoleName()).toString();
            }
        };
    }
    
    public Converter<Long, UserRole> ApplicationConversionServiceFactoryBean.getIdToUserRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.UserRole>() {
            public com.mcf.team.UserRole convert(java.lang.Long id) {
                return UserRole.findUserRole(id);
            }
        };
    }
    
    public Converter<String, UserRole> ApplicationConversionServiceFactoryBean.getStringToUserRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.UserRole>() {
            public com.mcf.team.UserRole convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), UserRole.class);
            }
        };
    }
    
    public Converter<Principal, String> ApplicationConversionServiceFactoryBean.getPrincipalToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.security.Principal, java.lang.String>() {
            public String convert(Principal principal) {
                return new StringBuilder().append(principal.getUsername()).append(' ').append(principal.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, Principal> ApplicationConversionServiceFactoryBean.getIdToPrincipalConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.security.Principal>() {
            public com.mcf.team.security.Principal convert(java.lang.Long id) {
                return Principal.findPrincipal(id);
            }
        };
    }
    
    public Converter<String, Principal> ApplicationConversionServiceFactoryBean.getStringToPrincipalConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.security.Principal>() {
            public com.mcf.team.security.Principal convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Principal.class);
            }
        };
    }
    
    public Converter<RolePrincipalAssignment, String> ApplicationConversionServiceFactoryBean.getRolePrincipalAssignmentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.mcf.team.security.principal.RolePrincipalAssignment, java.lang.String>() {
            public String convert(RolePrincipalAssignment rolePrincipalAssignment) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, RolePrincipalAssignment> ApplicationConversionServiceFactoryBean.getIdToRolePrincipalAssignmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.mcf.team.security.principal.RolePrincipalAssignment>() {
            public com.mcf.team.security.principal.RolePrincipalAssignment convert(java.lang.Long id) {
                return RolePrincipalAssignment.findRolePrincipalAssignment(id);
            }
        };
    }
    
    public Converter<String, RolePrincipalAssignment> ApplicationConversionServiceFactoryBean.getStringToRolePrincipalAssignmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.mcf.team.security.principal.RolePrincipalAssignment>() {
            public com.mcf.team.security.principal.RolePrincipalAssignment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), RolePrincipalAssignment.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBidToStringConverter());
        registry.addConverter(getIdToBidConverter());
        registry.addConverter(getBidProjectToStringConverter());
        registry.addConverter(getIdToBidProjectConverter());
        registry.addConverter(getStringToBidProjectConverter());
        registry.addConverter(getPlayerToStringConverter());
        registry.addConverter(getIdToPlayerConverter());
        registry.addConverter(getStringToPlayerConverter());
        registry.addConverter(getPrivilegeToStringConverter());
        registry.addConverter(getIdToPrivilegeConverter());
        registry.addConverter(getStringToPrivilegeConverter());
        registry.addConverter(getProfileToStringConverter());
        registry.addConverter(getIdToProfileConverter());
        registry.addConverter(getStringToProfileConverter());
        registry.addConverter(getTeamToStringConverter());
        registry.addConverter(getIdToTeamConverter());
        registry.addConverter(getStringToTeamConverter());
        registry.addConverter(getUserRoleToStringConverter());
        registry.addConverter(getIdToUserRoleConverter());
        registry.addConverter(getStringToUserRoleConverter());
        registry.addConverter(getPrincipalToStringConverter());
        registry.addConverter(getIdToPrincipalConverter());
        registry.addConverter(getStringToPrincipalConverter());
        registry.addConverter(getRolePrincipalAssignmentToStringConverter());
        registry.addConverter(getIdToRolePrincipalAssignmentConverter());
        registry.addConverter(getStringToRolePrincipalAssignmentConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
