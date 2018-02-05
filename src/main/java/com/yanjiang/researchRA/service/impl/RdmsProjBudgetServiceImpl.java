package com.yanjiang.researchRA.service.impl;

import com.yanjiang.researchRA.domain.RdmsProjBudget;
import com.yanjiang.researchRA.mapper.RdmsProjBudgetMapper;
import com.yanjiang.researchRA.service.RdmsProjBudgetService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/5.
 */
@Service("rdmsProjBudgetService")
public class RdmsProjBudgetServiceImpl implements RdmsProjBudgetService {

    @Resource
    private RdmsProjBudgetMapper projBudgetMapper;

    @Override
    public int insert(RdmsProjBudget projBudget) {
        return projBudgetMapper.insert(projBudget);
    }
}
