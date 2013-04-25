package com.mcf.team.web;

import com.mcf.team.UserRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/userroles")
@Controller
@RooWebScaffold(path = "userroles", formBackingObject = UserRole.class)
public class UserRoleController {
}
