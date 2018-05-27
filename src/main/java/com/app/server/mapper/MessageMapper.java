package com.app.server.mapper;

import com.app.server.model.MessageModel;
import com.app.server.model.MessageResponse;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface MessageMapper {

    @Select("SELECT * FROM message WHERE User_Id = #{userid} order by status desc,CREATE_TIME desc ")
    List<MessageModel> findMessageByUserid(@Param("userid")String userid);

    @Update("UPDATE message SET `Status` = #{status} WHERE Message_Id = #{message_id}")
    void updateStatusByMessageid(@Param("message_id")int message_id,@Param("status")String status );

    @Select("select count(1) from message where User_id = #{userid}")
    int returnTotalByUserid(@Param("userid")String user_id);

    @Insert("INSERT INTO message(user_id,body,create_time,status) values (#{borrower_id},#{body},date_format(SYSDATE(),'%Y-%m-%d'),1) ")
    void addMessageByOwnerid(@Param("borrower_id") int borrower_id,@Param("body")String body );

}
