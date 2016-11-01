package com.trs.controller;

import com.trs.service.URLMappingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.QueryParam;
import java.io.UnsupportedEncodingException;


/**
 * Created by fahai on 2016/10/25.
 */
@Controller
@RequestMapping(value = "/shortURL")
public class ConvertController {
    @Autowired
    private URLMappingService urlMappingService;

    @RequestMapping(value = "/")
    public String index1(){
        return "index";
    }

    @RequestMapping(value = "/index.html")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/save")
    public ModelAndView save(String longURL) throws UnsupportedEncodingException {
        if ("".equals(longURL) || longURL == null){
            return new ModelAndView("index");
        }
        String url = longURL;
        if (!longURL.startsWith("http://") && !longURL.startsWith("https://")){
            url = "http://" + longURL;
        }
        //编码存储
        url = java.net.URLEncoder.encode(url,"UTF-8");
        long id = urlMappingService.getIdByURL(url);
        if (id > 0){
            return new ModelAndView("index", "shortURL", "http://localhost:8080/shortURL/convert/" + id);
        }else {
            long newId = urlMappingService.addURLMapping(url);
            return new ModelAndView("index", "shortURL", "http://localhost:8080/shortURL/convert/" + newId);
        }
    }

    @RequestMapping(value = "/convert/{id}")
    public ModelAndView convert(@PathVariable String id) throws UnsupportedEncodingException {
        long urlId = Long.parseLong(id);
        String longURL = urlMappingService.getURLById(urlId);
        //解码
        longURL = java.net.URLDecoder.decode(longURL,"UTF-8");
        if (!"".equals(longURL)){
            return new ModelAndView(new RedirectView(longURL));
        }else {
            return new ModelAndView("404");
        }
    }
}
