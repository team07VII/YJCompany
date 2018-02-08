package com.yanjiang.basis.utils.exception;

import java.util.UUID;

/**
 * Created by dllo on 18/2/6.
 */
public class CommonUtils {

    public static String uuid() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

}
