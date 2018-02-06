package com.yanjiang.researchRA.mapper;

import com.yanjiang.researchRA.domain.ApplicationUnit;
import com.yanjiang.researchRA.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
public interface ApplicationUnitMapper {

    List<ApplicationUnit> selectAll();
    List<ApplicationUnit> selectApplicationUnit(PageBean<ApplicationUnit> pageBean);

    Integer getTotalRecord(PageBean<ApplicationUnit> pageBean);
}
