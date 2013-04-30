package com.mcf.team.web;

import com.mcf.team.security.Principal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/principals")
@Controller
@RooWebScaffold(path = "principals", formBackingObject = Principal.class)
public class PrincipalController {
}
