package com.yanjiang.researchRA.service;

import com.yanjiang.researchRA.domain.ApplicationUnit;
import com.yanjiang.basis.utils.BaseResult;

import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
public interface ApplicationUnitService {

    BaseResult<ApplicationUnit> pageSelect(int pageIndex,int pageSize,ApplicationUnit applicationUnit);

    List<ApplicationUnit> selectAll();
}
