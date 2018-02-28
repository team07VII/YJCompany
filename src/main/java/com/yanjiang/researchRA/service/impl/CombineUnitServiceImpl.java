package com.yanjiang.researchRA.service.impl;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.basis.utils.PageBean;
import com.yanjiang.researchRA.domain.ApplicationUnit;
import com.yanjiang.researchRA.domain.CombineUnit;
import com.yanjiang.researchRA.mapper.CombineUnitMapper;
import com.yanjiang.researchRA.service.CombineUnitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
@Service("combineUnitService")
public class CombineUnitServiceImpl implements CombineUnitService {

    @Resource
    private CombineUnitMapper combineUnitMapper;

    @Override
    public BaseResult<CombineUnit> pageSelect(int pageIndex, int pageSize, CombineUnit combineUnit) {
        BaseResult<CombineUnit> result = new BaseResult<>();

        PageBean<CombineUnit> pg = new PageBean<>(1,3,3);

        pg.setParameter(combineUnit);

        //获取总条数
        int total = combineUnitMapper.getTotalRecord(pg);

        /*构建分页对象*/
        PageBean<CombineUnit> pageBean = new PageBean<>(pageIndex+1,pageSize,total);

        //更新分页查询中的参数
        pageBean.setParameter(combineUnit);

        /*获取当前页数据*/
        List<CombineUnit> data = combineUnitMapper.selectPageBean(pageBean);

        /*将总记录数与当前页data数据设置到BaseResult对象中*/
        result.setTotal(total);
        result.setData(data);

        return result;
    }

    @Override
    public List<CombineUnit> selectAll() {
        return combineUnitMapper.selectAll();
    }
}
