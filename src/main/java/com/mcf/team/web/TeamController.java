package com.mcf.team.web;

import com.mcf.team.Team;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/teams")
@Controller
@RooWebScaffold(path = "teams", formBackingObject = Team.class)
public class TeamController {
}
