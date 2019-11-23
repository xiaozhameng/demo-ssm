package com.xiaozhameng.ssm.controller;

import com.alibaba.fastjson.JSONObject;
import com.xiaozhameng.ssm.service.UserInfoService;
import com.xiaozhameng.ssm.service.dao.po.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 控制器
 *
 * @author xiaozhameng
 */
@Controller
@RequestMapping(value = "/userInfo")
public class UserInfoController {

    @Resource
    private UserInfoService userInfoService;

    /**
     * 根据userId 查询用户的方法
     *
     * @param userId
     * @return
     */
    @RequestMapping(value = "query/{userId}")
    @ResponseBody
    public String getUserList(@PathVariable long userId) {
        UserInfo user = userInfoService.getByPrimaryKey(userId);
        return JSONObject.toJSONString(user);
    }

}
