package com.trs.service;

/**
 * Created by fahai on 2016/10/23.
 */
public interface URLMappingService {
    String getURLById(long id);
    long addURLMapping(String url);
    long getIdByURL(String url);
}
