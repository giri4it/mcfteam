package com.mcf.team.repository;

import com.mcf.team.BidProject;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = BidProject.class)
public interface BidProjectRepository {
}
