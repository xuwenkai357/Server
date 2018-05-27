package com.app.server.mapper;

import com.app.server.model.DynamicModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DynamicMapper {

    @Select("SELECT\n" +
            "A.*,\n" +
            "B.User_Name,\n" +
            "B.Photo_Url,\n" +
            "C.title,\n" +
            "C.author,\n" +
            "C.image\n" +
            "FROM\n" +
            "dynamic AS A\n" +
            "INNER JOIN user_info AS B ON A.User_Id = B.User_Id\n" +
            "LEFT JOIN book_info AS C ON C.Book_Info_Id = A.Book_Info_Id" +
            " where A.book_info_id like '%${bookinfoid}%' order by create_time desc limit #{start},#{end}")
    List<DynamicModel> findDynamicBybookinfoid(@Param("bookinfoid")String bookinfoid,@Param("start")Integer start,@Param("end")Integer end);

    @Select("select count(1) from dynamic where book_info_id like '%${bookinfoid}%'")
    int returnTotalBybookinfoid(@Param("bookinfoid")String bookinfoid);

    @Select("select count(1) from (select * from dynamic where book_info_id like '%${bookinfoid}%' limit #{start},#{end}) a")
    Integer returnCountBybookinfoid(@Param("bookinfoid")String bookinfoid,@Param("start")Integer start,@Param("end")Integer end);

    @Insert("insert into dynamic (Book_Info_Id,User_Id,Body,Create_Time) VALUES (#{bookinfoid},#{userid},#{body},SYSDATE())")
    void addDynamic(@Param("bookinfoid")String bookinfoid,@Param("userid")String userid,@Param("body")String body );



}
