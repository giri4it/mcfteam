// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.web;

import com.mcf.team.BidProject;
import com.mcf.team.Privilege;
import com.mcf.team.Profile;
import com.mcf.team.UserRole;
import com.mcf.team.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
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
                return BidProject.findBidProject(id);
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
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBidProjectToStringConverter());
        registry.addConverter(getIdToBidProjectConverter());
        registry.addConverter(getStringToBidProjectConverter());
        registry.addConverter(getPrivilegeToStringConverter());
        registry.addConverter(getIdToPrivilegeConverter());
        registry.addConverter(getStringToPrivilegeConverter());
        registry.addConverter(getProfileToStringConverter());
        registry.addConverter(getIdToProfileConverter());
        registry.addConverter(getStringToProfileConverter());
        registry.addConverter(getUserRoleToStringConverter());
        registry.addConverter(getIdToUserRoleConverter());
        registry.addConverter(getStringToUserRoleConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}