package com.mcf.team.web.security;

import com.mcf.team.UserRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/security/roles")
@Controller
@RooWebScaffold(path = "security/roles", formBackingObject = UserRole.class)
public class RoleController {
}
