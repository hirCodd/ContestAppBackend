package com.app.contest.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

public class ListUtils {

    private static Logger logger = LoggerFactory.getLogger(Logger.class);

    public static <T, S> List<T> listCopyProperties(Class<T> target, List<S> sources) {
        if (!CollectionUtils.isEmpty(sources)) {
            List<T> targetList = new ArrayList<T>();
            for (S source : sources) {
                try {
                    T clazz = target.newInstance();
                    BeanUtils.copyProperties(source, clazz);
                    targetList.add(clazz);
                } catch (Exception e) {
                    logger.error(e.getCause().toString());
                }
            }
            return targetList;
        } else {
            return null;
        }
    }


}
