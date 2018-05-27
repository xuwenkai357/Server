package com.app.server.controller;

import com.app.server.mapper.BookInfoMapper;
import com.app.server.model.BookInfoLocalModel;
import com.app.server.model.BookInfoLocalResponse;
import com.app.server.model.BookInfoModel;
import com.app.server.model.BookinfoResponse;
import com.app.server.request.RestTemplateController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class BookInfoController {

    @Autowired
    private BookInfoMapper bookInfoMapper;

//    @GetMapping("/bookinfo/search")
//    public BookinfoResponse findByIsbn(String isbn){
//        String url = "https://api.douban.com/v2/book/search";
//        BookinfoResponse bookinfoResponse = RestTemplateController.getInstance().getBookInfo(url,isbn);
//
////        System.out.println(bookinfoResponse.getBooks().get(0));
//
////        BookInfoModel bookInfoMode = bookInfoMappper.checkBookInfoByid(books.get(0));
////        System.out.println(bookInfoMode);
//         for (int i = 0;i<bookinfoResponse.getBooks().size();i++) {
////             System.out.println(bookInfoMappper.checkBookInfoByid(bookinfoResponse.getBooks().get(i)));
//             if (bookInfoMapper.checkBookInfoByid(bookinfoResponse.getBooks().get(i)).equals("0")) {
//                 String author = null;
//                 System.out.println(bookinfoResponse.getBooks().get(i).getAuthor());
//                 if (!bookinfoResponse.getBooks().get(i).getAuthor().isEmpty()){
//                     author = bookinfoResponse.getBooks().get(i).getAuthor().get(0);
//                 }
//                 else
//                 {
//                     author = null;
//                 }
//
//                 bookInfoMapper.insertBookInfo(bookinfoResponse.getBooks().get(i),author);
//             } else {
//                 System.out.println("该书信息已经存在");
//             }
//         }
//        return bookinfoResponse;
//    }

    @GetMapping("/bookinfo/searchlocal")
    public BookInfoLocalResponse findlocalByTittleOrIsbn(String keyword,Integer start,Integer count){
        if (keyword!=null) {
            if (keyword.matches("[0-9]+")) {
                if (keyword.length() == 13 || keyword.length() == 10) {
                    String url = "https://api.douban.com/v2/book/search";
                    BookinfoResponse bookinfoResponse = RestTemplateController.getInstance().getBookInfo(url, keyword);

//        System.out.println(bookinfoResponse.getBooks().get(0));

//        BookInfoModel bookInfoMode = bookInfoMappper.checkBookInfoByid(books.get(0));
//        System.out.println(bookInfoMode);
                    for (int i = 0; i < bookinfoResponse.getBooks().size(); i++) {
//             System.out.println(bookInfoMappper.checkBookInfoByid(bookinfoResponse.getBooks().get(i)));
                        if (bookInfoMapper.checkBookInfoByid(bookinfoResponse.getBooks().get(i)).equals("0")) {
                            String author = null;
                            System.out.println(bookinfoResponse.getBooks().get(i).getAuthor());
                            if (!bookinfoResponse.getBooks().get(i).getAuthor().isEmpty()) {
                                author = bookinfoResponse.getBooks().get(i).getAuthor().get(0);
                            } else {
                                author = null;
                            }

                            bookInfoMapper.insertBookInfo(bookinfoResponse.getBooks().get(i), author);
                        } else {
                            System.out.println("该书信息已经存在");
                        }
                    }
                }
            }
        }




        BookInfoLocalResponse bookInfoLocalResponse = new BookInfoLocalResponse();
        List<BookInfoLocalModel> bookInfoLocalModels = new ArrayList<>();
        String keyword2 = keyword;
        Integer end = start+count;
        int total = 0;
        int counts = 0;

        System.out.println(start+" "+count+" "+end+" "+total+" "+" "+counts+" ");



        bookInfoLocalModels = bookInfoMapper.findBookInfoBytitleOrIsbn(keyword,keyword2,start,end);

        System.out.println(bookInfoLocalModels);

        total = bookInfoMapper.returnTotalByLocal(keyword,keyword2);

        counts = bookInfoMapper.returnCountByLocal(keyword,keyword2,start,end);

        bookInfoLocalResponse.setCount(String.valueOf(counts));
        bookInfoLocalResponse.setTotal(String.valueOf(total));
        bookInfoLocalResponse.setStart(String.valueOf(start));
        bookInfoLocalResponse.setBooks(bookInfoLocalModels);

        return bookInfoLocalResponse;

    }

    @GetMapping("/bookinfo/select")
    public BookInfoLocalResponse selectBookListByUserid(int userid){

        BookInfoLocalResponse bookInfoLocalResponse = new BookInfoLocalResponse();
        List<BookInfoLocalModel> bookInfoLocalModels = new ArrayList<>();

        bookInfoLocalModels = bookInfoMapper.selectBookListByUserid(userid);

        System.out.println(bookInfoLocalModels);

        bookInfoLocalResponse.setBooks(bookInfoLocalModels);

        return bookInfoLocalResponse;

    }



}
