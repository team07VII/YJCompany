package com.yanjiang.basis.utils.impl.exception;

import java.util.UUID;

/**
 * Created by dllo on 18/2/6.
 */
public class CommonUtils {

    public static String uuid() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

}
