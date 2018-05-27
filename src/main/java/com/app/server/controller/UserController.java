package com.app.server.controller;

import com.app.server.mapper.UserMappper;
import com.app.server.model.response.BaseResponse;
import com.app.server.model.response.DataResponse;
import com.app.server.model.response.ConstResponse;
import com.app.server.model.UserModel;
import com.app.server.util.PatternUtil;
import com.app.server.util.SafeUtil;
import com.app.server.util.TextUtils;
import com.app.server.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserMappper userMappper;

    @RequestMapping("/user/login")
    public BaseResponse login(String name, String password){
        System.out.println("user="+name+" password="+password);
        if(name==null||password==null){
            return new BaseResponse(ConstResponse.DESC_PARAM, ConstResponse.STATUS_PARAM_ERROR);
        }
        UserModel userModel= userMappper.findUserByname(name);
        if(userModel==null){
            return new BaseResponse("用户名不存在", ConstResponse.STATUS_KNOWN_ERROR);
        }
        password = SafeUtil.shortMD5(password);
        if(!userModel.password.equals(password)){
            return new BaseResponse("用户名或密码错误", ConstResponse.STATUS_KNOWN_ERROR);
        }
        return new DataResponse(userModel,"登录成功", ConstResponse.STATUS_OK);
    }

    @RequestMapping("/user/register")
    public BaseResponse register(String name, String password,String phone){
        System.out.println("user="+name+" password="+password);

        String home_name = name+"的书房";
        System.out.println("user_name="+name+" home_name="+home_name);

        if(name==null||password==null){
            return new BaseResponse(ConstResponse.DESC_PARAM, ConstResponse.STATUS_PARAM_ERROR);
        }

        String nameCheck=PatternUtil.isNickname(name);
        if (!TextUtils.isEmpty(nameCheck)) {
            return new BaseResponse(nameCheck, ConstResponse.STATUS_KNOWN_ERROR);
        }
        if (!PatternUtil.isPassword(password)) {
            return new BaseResponse("请输入6~18位密码", ConstResponse.STATUS_KNOWN_ERROR);
        }
        UserModel userfind = userMappper.findUserByname(name);
        if (userfind != null) {
            return new BaseResponse("用户已注册", ConstResponse.STATUS_KNOWN_ERROR);
        }
        String token = SafeUtil.MD5(name + "app" + password);
        password = SafeUtil.shortMD5(password);

        userMappper.register(name, password, token);

        UserModel userModel = userMappper.findUserByname(name);

        System.out.println(userModel.user_id);

        int user_id = Integer.parseInt(userModel.user_id);

        System.out.println(user_id);
        userMappper.addUserInfo(user_id,name,home_name,phone);



        return new DataResponse(userMappper.findUserByname(name), ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }


    @RequestMapping("/user/modify")
    public BaseResponse modify(String userid,String user_name,String phone,String password,String newpassword){

        UserModel userModel= userMappper.findUserByuserid(userid);

        password = SafeUtil.shortMD5(password);
        if(!userModel.password.equals(password)){
            return new BaseResponse("密码错误", ConstResponse.STATUS_KNOWN_ERROR);
        }
        if (newpassword.length()!=0) {
            String token = SafeUtil.MD5(userModel.user + "app" + newpassword);
            newpassword = SafeUtil.shortMD5(newpassword);
            userMappper.updateUser(newpassword,token,userModel.user_id);
            System.out.println("执行更新密码");
            userMappper.updateUserinfo(user_name,phone,userid);

        }else {
            userMappper.updateUserinfo(user_name,phone,userid);
            System.out.println("执行更新用户信息");
        }


        return new DataResponse(userMappper.findUserByuserid(userid), ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }

    @RequestMapping("user/check")
    public BaseResponse check(String userid){
        return new DataResponse(userMappper.findUserByuserid(userid),ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }



}