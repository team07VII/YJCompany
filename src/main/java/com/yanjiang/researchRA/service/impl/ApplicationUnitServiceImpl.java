package com.yanjiang.researchRA.service.impl;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.basis.utils.PageBean;
import com.yanjiang.researchRA.domain.ApplicationUnit;
import com.yanjiang.researchRA.mapper.ApplicationUnitMapper;
import com.yanjiang.researchRA.service.ApplicationUnitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
@Service("applicationUnitService")
public class ApplicationUnitServiceImpl implements ApplicationUnitService {


    @Resource
    private ApplicationUnitMapper applicationUnitMapper;

    @Override
    public BaseResult<ApplicationUnit> pageSelect(int pageIndex, int pageSize, ApplicationUnit applicationUnit) {

        BaseResult<ApplicationUnit> result = new BaseResult<>();

        PageBean<ApplicationUnit> pg = new PageBean<>(1,3,3);

        pg.setParameter(applicationUnit);

        //获取总条数
        int total = applicationUnitMapper.getTotalRecord(pg);

        /*构建分页对象*/
        PageBean<ApplicationUnit> pageBean = new PageBean<>(pageIndex+1,pageSize,total);

        //更新分页查询中的参数
        pageBean.setParameter(applicationUnit);

        /*获取当前页数据*/
        List<ApplicationUnit> data = applicationUnitMapper.selectPageBean(pageBean);

        /*将总记录数与当前页data数据设置到BaseResult对象中*/
        result.setTotal(total);
        result.setData(data);

        return result;
    }

    @Override
    public List<ApplicationUnit> selectAll() {
       return applicationUnitMapper.selectAll();
    }
}
