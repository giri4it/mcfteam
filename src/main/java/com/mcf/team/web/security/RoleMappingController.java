package com.mcf.team.web.security;

import com.mcf.team.security.principal.RolePrincipalAssignment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/security/assignments")
@Controller
@RooWebScaffold(path = "security/assignments", formBackingObject = RolePrincipalAssignment.class)
public class RoleMappingController {
}
