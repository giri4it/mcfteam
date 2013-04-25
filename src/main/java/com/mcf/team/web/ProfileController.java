package com.mcf.team.web;

import com.mcf.team.Profile;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/profiles")
@Controller
@RooWebScaffold(path = "profiles", formBackingObject = Profile.class)
public class ProfileController {
}
