package com.yanjiang.researchRA.service;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.researchRA.domain.CombineUnit;

import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
public interface CombineUnitService {
    BaseResult<CombineUnit> pageSelect(int pageIndex, int pageSize, CombineUnit combineUnit);

    List<CombineUnit> selectAll();
}
