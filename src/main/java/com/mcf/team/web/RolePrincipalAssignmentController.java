package com.mcf.team.web;

import com.mcf.team.security.principal.RolePrincipalAssignment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/roleprincipalassignments")
@Controller
@RooWebScaffold(path = "roleprincipalassignments", formBackingObject = RolePrincipalAssignment.class)
public class RolePrincipalAssignmentController {
}
