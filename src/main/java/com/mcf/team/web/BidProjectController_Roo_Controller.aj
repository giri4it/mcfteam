// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mcf.team.web;

import com.mcf.team.BidProject;
import com.mcf.team.repository.BidProjectRepository;
import com.mcf.team.web.BidProjectController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect BidProjectController_Roo_Controller {
    
    @Autowired
    BidProjectRepository BidProjectController.bidProjectRepository;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String BidProjectController.create(@Valid BidProject bidProject, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, bidProject);
            return "bidprojects/create";
        }
        uiModel.asMap().clear();
        bidProjectRepository.save(bidProject);
        return "redirect:/bidprojects/" + encodeUrlPathSegment(bidProject.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String BidProjectController.createForm(Model uiModel) {
        populateEditForm(uiModel, new BidProject());
        return "bidprojects/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String BidProjectController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("bidproject", bidProjectRepository.findOne(id));
        uiModel.addAttribute("itemId", id);
        return "bidprojects/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String BidProjectController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("bidprojects", bidProjectRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / sizeNo, sizeNo)).getContent());
            float nrOfPages = (float) bidProjectRepository.count() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("bidprojects", bidProjectRepository.findAll());
        }
        addDateTimeFormatPatterns(uiModel);
        return "bidprojects/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String BidProjectController.update(@Valid BidProject bidProject, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, bidProject);
            return "bidprojects/update";
        }
        uiModel.asMap().clear();
        bidProjectRepository.save(bidProject);
        return "redirect:/bidprojects/" + encodeUrlPathSegment(bidProject.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String BidProjectController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, bidProjectRepository.findOne(id));
        return "bidprojects/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String BidProjectController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        BidProject bidProject = bidProjectRepository.findOne(id);
        bidProjectRepository.delete(bidProject);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/bidprojects";
    }
    
    void BidProjectController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("bidProject_startdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("bidProject_enddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void BidProjectController.populateEditForm(Model uiModel, BidProject bidProject) {
        uiModel.addAttribute("bidProject", bidProject);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String BidProjectController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
