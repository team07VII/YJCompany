package com.yanjiang.yjStaff.mapper;

/**
 * Created by dllo on 18/2/7.
 */

import com.yanjiang.basis.utils.PageBean;
import com.yanjiang.yjStaff.domain.YjStaff;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface YjStaffMapper {

    YjStaff selectByUserName(@Param("userName") String userName, @Param("pwd") String pwd);

    List<YjStaff> selectPageBean(PageBean<YjStaff> pageBean);

    Integer getTotalRecord(PageBean<YjStaff> pageBean);

    List<YjStaff> selectAll();

    Set<String> getRoles(String userName);
}
