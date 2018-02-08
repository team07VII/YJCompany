package com.yanjiang.researchRA.controller;

import com.yanjiang.researchRA.domain.ApplicationUnit;
import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.researchRA.service.ApplicationUnitService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */

@Controller
@RequestMapping("researchRA/")
public class ApplicationUnitController {

    @Resource
    private ApplicationUnitService applicationUnitService;

    @RequestMapping("/selectApplicationUnit")
    @ResponseBody
    public BaseResult<ApplicationUnit> selectApplicationUnit(int pageIndex,int pageSize,ApplicationUnit applicationUnit ){

        System.out.println(applicationUnit);
        BaseResult<ApplicationUnit> result = null;

        try {

        result = applicationUnitService.pageSelect(pageIndex, pageSize, applicationUnit);
        }catch (Exception e){
            return null;
        }


        return result;
    }

    @RequestMapping("/searchApplicationUnit")
    @ResponseBody
    public BaseResult<ApplicationUnit> searchApplicationUnit(){
        List<ApplicationUnit> applicationUnits = applicationUnitService.selectAll();
        /*将查询到的记过进行封装*/
        BaseResult<ApplicationUnit> result = new BaseResult<>();
        result.setTotal(100);//设置总记录数
        result.setData(applicationUnits);//设置当前显示数据

        return result;

    }

}
