package com.app.server.controller;

import com.app.server.mapper.BookInfoMapper;
import com.app.server.mapper.DynamicMapper;
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
public class DynamicController {

    @Autowired
    private DynamicMapper dynamicMapper;

    @Autowired
    private BookInfoMapper bookInfoMapper;


    @GetMapping("/dynamic/search")
    public DynamicResponse findByBookinfoId(String bookinfoid,Integer start,Integer count){
        DynamicResponse dynamicResponse = new DynamicResponse();
        List<DynamicModel> dynamicModels = new ArrayList<>();

        if (start==null){
            start=0;
        }
        if (count==null){
            count=20;
        }

        Integer end = start+count;
        Integer counts=0;
        dynamicModels = dynamicMapper.findDynamicBybookinfoid(bookinfoid,start,end);
        int total =  dynamicMapper.returnTotalBybookinfoid(bookinfoid);
        Integer countsresult = dynamicMapper.returnCountBybookinfoid(bookinfoid,start,end);
        if (countsresult==null){
            counts = 0;
        }
        else if (countsresult!=null){
            counts = countsresult;
        }

        System.out.println(start+" "+count+" "+end+" "+total+" "+" "+counts+" "+countsresult);
        dynamicResponse.setCount(String.valueOf(counts));
        dynamicResponse.setStart(String.valueOf(start));
        dynamicResponse.setTotal(String.valueOf(total));
        dynamicResponse.setReviews(dynamicModels);

        return dynamicResponse;
    }

    @RequestMapping("/dynamic/add")
    public BaseResponse addDynamic(String bookinfoid, String userid, String body){
        if (bookinfoid==null){
            return new BaseResponse("用户名不存在", ConstResponse.STATUS_KNOWN_ERROR);
        }
        else if (userid==null){
            return new BaseResponse("用户名不存在", ConstResponse.STATUS_KNOWN_ERROR);
        }
        else if (body==null){
            return new BaseResponse("用户名不存在", ConstResponse.STATUS_KNOWN_ERROR);
        }

        dynamicMapper.addDynamic(bookinfoid,userid,body);
        System.out.println("添加成功");
        return new BaseResponse("添加成功", ConstResponse.STATUS_OK);


    }


    @GetMapping("/dynamic/loadall")
    public ShowDynamicListResponse findALL( Integer start, Integer count){
        ShowDynamicListResponse showDynamicListResponse = new ShowDynamicListResponse();
        List<ShowDynamicResponse> showDynamicResponses = new ArrayList<>();

        List<DynamicModel> dynamicModels = new ArrayList<>();
        List<BookInfoLocalModel> bookInfoLocalResponses = new ArrayList<>();

        String book_info_id=null;

        if (start==null){
            start=0;
        }
        if (count==null){
            count=20;
        }

        Integer end = start+count;
        Integer counts=0;
        dynamicModels = dynamicMapper.findDynamicBybookinfoid(book_info_id,start,end);

        int total =  dynamicMapper.returnTotalBybookinfoid(book_info_id);
        Integer countsresult = dynamicMapper.returnCountBybookinfoid(book_info_id,start,end);
        if (countsresult==null){
            counts = 0;
        }
        else if (countsresult!=null){
            counts = countsresult;
        }


        for(int i = 0;i< dynamicModels.size();i++){

            book_info_id = dynamicModels.get(i).getBook_info_id();

            bookInfoLocalResponses = bookInfoMapper.findBookInfoBytitleOrIsbn(book_info_id,book_info_id,start,end);

            ShowDynamicResponse showDynamicResponse = new ShowDynamicResponse();
            showDynamicResponse.setBook(bookInfoLocalResponses.get(0));
            showDynamicResponse.setBookReviewResponse(dynamicModels.get(i));

            showDynamicResponses.add(showDynamicResponse);
        }

        showDynamicListResponse.setCount(String.valueOf(counts));
        showDynamicListResponse.setStart(String.valueOf(start));
        showDynamicListResponse.setTotal(String.valueOf(total));

        showDynamicListResponse.setShowDynamics(showDynamicResponses);


        return showDynamicListResponse;
    }








}
