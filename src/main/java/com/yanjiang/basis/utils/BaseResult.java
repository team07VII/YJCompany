package com.yanjiang.basis.utils;

import java.io.Serializable;
import java.util.List;

/**
 * Created by dllo on 18/1/26.
 */

/**
 * 封装miniui中分页显示的结果集
 * @param <T>
 */
public class BaseResult<T> implements Serializable {

    private int total;//总记录数
    private List<T> data;//当页数据集合

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
