package com.mcf.team.web;

import com.mcf.team.Privilege;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/privileges")
@Controller
@RooWebScaffold(path = "privileges", formBackingObject = Privilege.class)
public class PrivilegeController {
}
