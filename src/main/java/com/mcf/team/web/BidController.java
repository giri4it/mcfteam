package com.mcf.team.web;

import com.mcf.team.Bid;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/bids")
@Controller
@RooWebScaffold(path = "bids", formBackingObject = Bid.class)
public class BidController {
}
