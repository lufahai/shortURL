package com.trs.dao;

import com.trs.model.URLMapping;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by fahai on 2016/10/23.
 */
@Repository
public interface URLMappingDao {
    URLMapping getURLById(@Param("id") long id);
    long addURLMapping(URLMapping urlMapping);
    URLMapping getIdByURL(@Param("longURL") String longURL);
}
