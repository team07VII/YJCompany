package com.yanjiang.researchRA.mapper;

import com.yanjiang.basis.utils.PageBean;
import com.yanjiang.researchRA.domain.ApplicationUnit;

import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
public interface ApplicationUnitMapper {

    List<ApplicationUnit> selectAll();

    List<ApplicationUnit> selectPageBean(PageBean<ApplicationUnit> pageBean);

    Integer getTotalRecord(PageBean<ApplicationUnit> pageBean);


}
