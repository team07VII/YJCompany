package com.yanjiang.researchRA.controller;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.researchRA.domain.ApplicationUnit;
import com.yanjiang.researchRA.domain.CombineUnit;
import com.yanjiang.researchRA.service.CombineUnitService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
@Controller
@RequestMapping("researchRA/")
public class CombineUnitController {
    @Resource
    private CombineUnitService combineUnitService;
    @RequestMapping("/selectCombineUnit")
    @ResponseBody
    public BaseResult<CombineUnit> pageSelect(int pageIndex, int pageSize, CombineUnit combineUnit){
        System.out.println(combineUnit);
        BaseResult<CombineUnit> result = null;
        try {

            result = combineUnitService.pageSelect(pageIndex,pageSize,combineUnit);
        }catch (Exception e){
            return null;

        }
        return result;

    }
//    @RequestMapping("/searchCombineUnit")
//    @ResponseBody
//    public BaseResult<CombineUnit> searchCombineUnit(){
//        List<CombineUnit> combineUnits = combineUnitService.selectAll();
//        /*将查询到的记过进行封装*/
//        BaseResult<CombineUnit> result = new BaseResult<>();
//        result.setTotal(100);//设置总记录数
//        result.setData(combineUnits);//设置当前显示数据
//
//        return result;
//
//    }
}
