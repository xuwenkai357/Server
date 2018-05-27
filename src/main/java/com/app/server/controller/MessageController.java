package com.app.server.controller;


import com.app.server.mapper.MessageMapper;
import com.app.server.model.MessageModel;
import com.app.server.model.MessageResponse;
import com.app.server.model.response.BaseResponse;
import com.app.server.model.response.ConstResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class MessageController {

    @Autowired
    private MessageMapper messageMapper;

    @GetMapping("/message/search")
    public MessageResponse findMessageByUserid(String userid){
        MessageResponse messageResponse = new MessageResponse();
        List<MessageModel> messageModels = new ArrayList<>();

        messageModels = messageMapper.findMessageByUserid(userid);
        int total = messageMapper.returnTotalByUserid(userid);

        messageResponse.setTotal(total);
        messageResponse.setMessages(messageModels);

        return messageResponse;
    }

    @RequestMapping("/message/update")
    public BaseResponse updateByMessageid(String messageid){

        String status = "0";

        messageMapper.updateStatusByMessageid(Integer.parseInt(messageid),status);

        return new BaseResponse("添加成功", ConstResponse.STATUS_OK);
    }


}
