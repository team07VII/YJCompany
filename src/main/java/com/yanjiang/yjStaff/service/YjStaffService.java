package com.yanjiang.yjStaff.service;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.yjStaff.domain.YjStaff;

import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 18/2/7.
 */
public interface YjStaffService {

    YjStaff selectByUserName(String userName, String pwd);

    BaseResult<YjStaff> pageSelect(int pageIndex, int pageSize, YjStaff yjStaff);

    List<YjStaff> selectAll();

    Set<String> getRoles(String userName);

}
