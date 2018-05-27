package com.app.server.controller;

import com.app.server.mapper.*;
import com.app.server.model.*;
import com.app.server.model.response.BaseResponse;
import com.app.server.model.response.ConstResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class BorrowListContyoller {

    @Autowired
    private BorrowListMappper borrowListMappper;

    @Autowired
    private BookListMappper bookListMappper;

    @Autowired
    private MessageMapper messageMapper;

    @Autowired
    private UserMappper userMappper;

    @Autowired
    private BookInfoMapper bookInfoMapper;

    @GetMapping("/borrowlist/all")
    public MyBorrowListResponse findByUserid(int userid ){
        MyBorrowListResponse myBorrowListResponse = new MyBorrowListResponse();
        List<MyBorrowListModel> myBorrowListModels =new ArrayList<>();

        myBorrowListModels = borrowListMappper.findByBorrowid(userid);

        myBorrowListResponse.setMyBorrowListModels(myBorrowListModels);

        return myBorrowListResponse;
    }


    @RequestMapping("/borrowlist/borrow")
    public BaseResponse addBorrowList(int userid,int book_id,int book_info_id,int owner_id){

        String phone = null;
        String body = null;
        String name = null;

        phone = userMappper.findPhoneByUserid(userid);

        name = userMappper.findNameByUserid(userid);

        List<BookInfoLocalModel> bookInfoLocalModels = bookInfoMapper.findBookInfoBytitleOrIsbn(String.valueOf(book_info_id),String.valueOf(book_info_id),0,20);

        String title = bookInfoLocalModels.get(0).getTitle();
        if (phone==null){
            return new BaseResponse("手机号未填写，请补充",ConstResponse.STATUS_KNOWN_ERROR);
        }

        body = "您好！\n" +
                "\t\t您的书籍《"+title+"》现在由用户： "+name+"，申请借阅。\n" +
                "其联系方式为："+phone+"。请您尽快联系该用户，交流书籍借阅方式。";

        System.out.println(body);

        String check_status =  bookListMappper.checkBookStatus(book_id);

        if (!check_status.equals("1") ){
            return new BaseResponse("当前该书不能借阅",ConstResponse.STATUS_KNOWN_ERROR);
        }



        bookListMappper.updateBookListStatus(book_id,"2");

        borrowListMappper.addBorrowList(book_id,book_info_id,owner_id,userid);

        messageMapper.addMessageByOwnerid(owner_id,body);

        bookInfoMapper.updateByBorrowbook(String.valueOf(book_info_id));


        return new BaseResponse(ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }

    @RequestMapping("borrowlist/udtconfine")
    public BaseResponse updateConfinetime(int borrow_id,int book_id){

        borrowListMappper.updateConfinetime(borrow_id);
        bookListMappper.updateBookListStatus(book_id,"3");

        return new BaseResponse(ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }

    @RequestMapping("borrowlist/udtreturn")
    public BaseResponse updateReturntime(int borrow_id,int book_id){

        borrowListMappper.updateReturntime(borrow_id);
        bookListMappper.updateBookListStatus(book_id,"4");

        return new BaseResponse(ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }

    @RequestMapping("borrowlist/confinereturn")
    public BaseResponse confineReturn(int book_id){

        bookListMappper.updateBookListStatus(book_id,"1");


        return new BaseResponse(ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }


}
