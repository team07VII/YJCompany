package com.yanjiang.yjStaff.mapper;

/**
 * Created by dllo on 18/2/7.
 */

import com.yanjiang.basis.utils.PageBean;
import com.yanjiang.yjStaff.domain.YjStaff;

import java.util.List;

public interface YjStaffMapper {

    YjStaff selectByUserName(String userName, String pwd);

    List<YjStaff> selectPageBean(PageBean<YjStaff> pageBean);

    Integer getTotalRecord(PageBean<YjStaff> pageBean);

    List<YjStaff> selectAll();

}
