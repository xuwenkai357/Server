package com.app.server.mapper;

import com.app.server.model.UserModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.jpa.repository.Query;

public interface UserMappper {


    @Select("select a.user_id,a.user,a.password,a.token,b.user_name,b.phone from user as A LEFT JOIN USER_INFO as B ON a.user_id = b.user_id where user = #{user}")
    UserModel findUserByname(String user);

    @Select("select a.user_id,a.user,a.password,a.token,b.user_name,b.phone from user as A LEFT JOIN USER_INFO as B ON a.user_id = b.user_id where a.user_id = #{userid}")
    UserModel findUserByuserid(@Param("userid") String usedid);

    @Insert("insert into user(user, password,token) values(#{user}, #{password}, #{token})")
    void register(@Param("user")String user, @Param("password")String password, @Param("token")String token);


    @Insert("INSERT into user_info(user_id,user_name,home_name,Phone) values(#{user_id}, #{user_name}, #{home_name},#{phone} )")
    void addUserInfo(@Param("user_id")int user_id , @Param("user_name")String user_name, @Param("home_name")String home_name,@Param("phone")String phone);

    @Select("select phone from user_info where user_id = #{userid}")
    String findPhoneByUserid(@Param("userid") int userid);

    @Select("select user_name from user_info where user_id = #{userid}")
    String findNameByUserid(@Param("userid") int userid);

    @Update("UPDATE user_info a\n" +
            "SET a.User_Name = #{username}, a.Phone = #{phone}\n" +
            "WHERE a.user_id = #{userid}\n")
    void updateUserinfo(@Param("username") String username,@Param("phone") String phone,@Param("userid") String userid );

    @Update("UPDATE user a\n" +
            "SET a.password = #{password}, a.token = #{token}\n" +
            "WHERE a.user_id = #{userid}\n")
    void updateUser(@Param("password") String password,@Param("token") String token,@Param("userid") String userid );


}
