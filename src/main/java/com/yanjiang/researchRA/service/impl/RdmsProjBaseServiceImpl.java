package com.yanjiang.researchRA.service.impl;

import com.yanjiang.researchRA.domain.RdmsProjBase;
import com.yanjiang.researchRA.mapper.RdmsProjBaseMapper;
import com.yanjiang.researchRA.service.RdmsProjBaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/6.
 */
@Service("rdmsProjBaseService")
public class RdmsProjBaseServiceImpl implements RdmsProjBaseService {

    @Resource
    private RdmsProjBaseMapper projBaseMapper;


    @Override
    public int insert(RdmsProjBase projBase) {
        return projBaseMapper.insert(projBase);
    }
}
