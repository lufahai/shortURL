package com.trs.serviceimpl;

import com.trs.dao.URLMappingDao;
import com.trs.model.URLMapping;
import com.trs.service.URLMappingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by fahai on 2016/10/25.
 */
@Service
public class URLMappingServiceImpl implements URLMappingService {
    @Autowired
    private URLMappingDao urlMappingDao;
    public String getURLById(long id) {
        URLMapping urlMapping = urlMappingDao.getURLById(id);
        if (urlMapping != null){
            return urlMapping.getLongURL();
        }else {
            return "";
        }
    }

    public long addURLMapping(String url) {
        URLMapping urlMapping = new URLMapping();
        urlMapping.setLongURL(url);
        urlMappingDao.addURLMapping(urlMapping);
        return urlMapping.getId();
    }

    public long getIdByURL(String url) {
        URLMapping urlMapping = urlMappingDao.getIdByURL(url);
        if (urlMapping != null){
            return urlMapping.getId();
        }else {
            return -1;
        }
    }
}
