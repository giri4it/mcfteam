// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.web;

import com.mcf.team.Bid;
import com.mcf.team.Player;
import com.mcf.team.web.BidController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect BidController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String BidController.create(@Valid Bid bid, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, bid);
            return "bids/create";
        }
        uiModel.asMap().clear();
        bid.persist();
        return "redirect:/bids/" + encodeUrlPathSegment(bid.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String BidController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Bid());
        return "bids/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String BidController.show(@PathVariable("id") String id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("bid", Bid.findBid(id));
        uiModel.addAttribute("itemId", id);
        return "bids/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String BidController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("bids", Bid.findBidEntries(firstResult, sizeNo));
            float nrOfPages = (float) Bid.countBids() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("bids", Bid.findAllBids());
        }
        addDateTimeFormatPatterns(uiModel);
        return "bids/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String BidController.update(@Valid Bid bid, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, bid);
            return "bids/update";
        }
        uiModel.asMap().clear();
        bid.merge();
        return "redirect:/bids/" + encodeUrlPathSegment(bid.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String BidController.updateForm(@PathVariable("id") String id, Model uiModel) {
        populateEditForm(uiModel, Bid.findBid(id));
        return "bids/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String BidController.delete(@PathVariable("id") String id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Bid bid = Bid.findBid(id);
        bid.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/bids";
    }
    
    void BidController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("bid_biddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void BidController.populateEditForm(Model uiModel, Bid bid) {
        uiModel.addAttribute("bid", bid);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("players", Player.findAllPlayers());
    }
    
    String BidController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
