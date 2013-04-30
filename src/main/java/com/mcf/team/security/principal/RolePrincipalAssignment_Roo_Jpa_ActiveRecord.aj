// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.security.principal;

import com.mcf.team.security.principal.RolePrincipalAssignment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RolePrincipalAssignment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager RolePrincipalAssignment.entityManager;
    
    public static final EntityManager RolePrincipalAssignment.entityManager() {
        EntityManager em = new RolePrincipalAssignment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long RolePrincipalAssignment.countRolePrincipalAssignments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RolePrincipalAssignment o", Long.class).getSingleResult();
    }
    
    public static List<RolePrincipalAssignment> RolePrincipalAssignment.findAllRolePrincipalAssignments() {
        return entityManager().createQuery("SELECT o FROM RolePrincipalAssignment o", RolePrincipalAssignment.class).getResultList();
    }
    
    public static RolePrincipalAssignment RolePrincipalAssignment.findRolePrincipalAssignment(Long id) {
        if (id == null) return null;
        return entityManager().find(RolePrincipalAssignment.class, id);
    }
    
    public static List<RolePrincipalAssignment> RolePrincipalAssignment.findRolePrincipalAssignmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RolePrincipalAssignment o", RolePrincipalAssignment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void RolePrincipalAssignment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RolePrincipalAssignment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RolePrincipalAssignment attached = RolePrincipalAssignment.findRolePrincipalAssignment(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RolePrincipalAssignment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void RolePrincipalAssignment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public RolePrincipalAssignment RolePrincipalAssignment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RolePrincipalAssignment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}