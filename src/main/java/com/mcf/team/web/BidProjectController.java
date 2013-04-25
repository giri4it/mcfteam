package com.mcf.team.web;

import com.mcf.team.BidProject;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/bidprojects")
@Controller
@RooWebScaffold(path = "bidprojects", formBackingObject = BidProject.class)
public class BidProjectController {
}
