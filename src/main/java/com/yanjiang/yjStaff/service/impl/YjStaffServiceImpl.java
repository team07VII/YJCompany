package com.yanjiang.yjStaff.service.impl;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.basis.utils.PageBean;
import com.yanjiang.yjStaff.domain.YjStaff;
import com.yanjiang.yjStaff.mapper.YjStaffMapper;
import com.yanjiang.yjStaff.service.YjStaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 18/2/7.
 */
@Service("yjStaffService")
public class YjStaffServiceImpl implements YjStaffService {

    @Resource
    private YjStaffMapper yjStaffMapper;

    @Override
    public YjStaff selectByUserName(String userName, String pwd) {
        return yjStaffMapper.selectByUserName(userName, pwd);
    }

    public BaseResult<YjStaff> pageSelect(int pageIndex, int pageSize, YjStaff yjStaff) {

        BaseResult<YjStaff> result = new BaseResult<>();

        PageBean<YjStaff> pg = new PageBean<>(1,3,3);

        pg.setParameter(yjStaff);

        //获取总条数
        int total = yjStaffMapper.getTotalRecord(pg);

        /*构建分页对象*/
        PageBean<YjStaff> pageBean = new PageBean<>(pageIndex+1,pageSize,total);

        //更新分页查询中的参数
        pageBean.setParameter(yjStaff);

        /*获取当前页数据*/
        List<YjStaff> data = yjStaffMapper.selectPageBean(pageBean);

        /*将总记录数与当前页data数据设置到BaseResult对象中*/
        result.setTotal(total);
        result.setData(data);

        return result;
    }

    @Override
    public List<YjStaff> selectAll() {
        return yjStaffMapper.selectAll();
    }

    @Override
    public Set<String> getRoles(String userName) {
        return yjStaffMapper.getRoles(userName);
    }


}
