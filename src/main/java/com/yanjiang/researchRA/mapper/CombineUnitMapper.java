package com.yanjiang.researchRA.mapper;

import com.yanjiang.basis.utils.PageBean;

import com.yanjiang.researchRA.domain.CombineUnit;

import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
public interface CombineUnitMapper {
    List<CombineUnit> selectAll();

    List<CombineUnit> selectPageBean(PageBean<CombineUnit> pageBean);

    Integer getTotalRecord(PageBean<CombineUnit> pageBean);
}
