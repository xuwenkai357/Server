package com.app.server.controller;

import com.app.server.mapper.BookInfoMapper;
import com.app.server.mapper.BookListMappper;
import com.app.server.mapper.BorrowListMappper;
import com.app.server.model.BookListModel;
import com.app.server.model.BookListResponse;
import com.app.server.model.response.BaseResponse;
import com.app.server.model.response.ConstResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class BookListController {

    @Autowired
    private BookListMappper bookListMappper;

    @Autowired
    private BorrowListMappper borrowListMappper;

    @Autowired
    private BookInfoMapper bookInfoMapper;

    @GetMapping("/booklist/myshare")
    public BookListResponse findByUserid(int userid ){
        BookListResponse bookListResponse = new BookListResponse();
        List<BookListModel> bookListModels =new ArrayList<>();

        bookListModels = bookListMappper.findbyuserid(userid);

        bookListResponse.setBookListModels(bookListModels);

        return bookListResponse;
    }




    @GetMapping("/booklist/all")
    public BookListResponse findByBookInfoid(int book_info_id ,String userid){
        BookListResponse bookListResponse = new BookListResponse();
        List<BookListModel> bookListModels =new ArrayList<>();

        bookListModels = bookListMappper.findbyBookinfoid(book_info_id,userid);

        bookListResponse.setBookListModels(bookListModels);

        return bookListResponse;
    }






    @RequestMapping("/booklist/add")
    public BaseResponse addBooklist(int userid,int book_info_id){

        bookListMappper.addBookList(userid,book_info_id);

        bookInfoMapper.updateByAddbook(String.valueOf(book_info_id));

        return new BaseResponse(ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }


    @RequestMapping("/booklist/update")
    public BaseResponse updateBookList(int book_id,String status,int borrow_id){

        bookListMappper.updateBookListStatus(book_id,status);

        borrowListMappper.updateCompletestatus(borrow_id);

        return new BaseResponse(ConstResponse.DESC_OK,ConstResponse.STATUS_OK);
    }


}
