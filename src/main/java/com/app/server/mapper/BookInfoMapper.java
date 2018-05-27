package com.app.server.mapper;

import com.app.server.model.BookInfoLocalModel;
import com.app.server.model.BookInfoModel;
import com.app.server.model.BookinfoResponse;
import com.app.server.model.UserModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface BookInfoMapper {

    @Select("select * from book_info where title like '%${keyword}%' or isbn13 LIKE '%${keyword2}%' or book_info_id LIKE '%${keyword2}%' order by hot desc limit #{start},#{end} ")
    List<BookInfoLocalModel> findBookInfoBytitleOrIsbn(@Param("keyword") String keyword, @Param("keyword2") String keyword2,@Param("start")Integer start,@Param("end")Integer end);

    @Select("select count(1) from (select * from book_info where title like '%${keyword}%' " +
            "or isbn13 LIKE '%${keyword2}%' limit #{start},#{end}) a")
    int returnCountByLocal(@Param("keyword") String keyword, @Param("keyword2") String keyword2,@Param("start")Integer start,@Param("end")Integer end);

    @Select("select count(1) from book_info where title like '%${keyword}%' or isbn13 LIKE '%${keyword2}%'")
    int returnTotalByLocal(@Param("keyword") String keyword, @Param("keyword2") String keyword2);


    @Select("SELECT DISTINCT D.*\n" +
            "FROM\n" +
            "(SELECT DISTINCT book_info_id FROM book_list WHERE Owner_Id = #{userid}\n" +
            "UNION ALL\n" +
            "SELECT DISTINCT book_info_id FROM borrow_list WHERE Borrower_Id = #{userid} ) C\n" +
            "LEFT JOIN book_info AS D ON C.book_info_id = D.Book_Info_Id")
    List<BookInfoLocalModel> selectBookListByUserid(@Param("userid") int userid);

    @Update("UPDATE book_info A " +
            "SET HOT=HOT+1," +
            "enter_time=SYSDATE() " +
            "WHERE A.BOOK_INFO_ID = #{bookinfoid}")
    void updateByAddbook(@Param("bookinfoid")String bookinfoid );

    @Update("UPDATE book_info A " +
            "SET HOT=HOT+1 " +
            "WHERE A.BOOK_INFO_ID = #{bookinfoid}")
    void updateByBorrowbook(@Param("bookinfoid")String bookinfoid );




    @Select("select * from book_info where isbn like %#{isbn}%")
    List<BookInfoModel> findBookInfoByisbn(String isbn);

    @Insert("insert into book_info(book_info_id,isbn13,title,image,publisher,pubdate,author,summary,page,price,hot,enter_time) " +
            "values(#{bookinfo.id},#{bookinfo.isbn13},#{bookinfo.title},#{bookinfo.image},#{bookinfo.publisher},#{bookinfo.pubdate},#{author},#{bookinfo.summary},#{bookinfo.pages},#{bookinfo.price},0,SYSDATE())")    //#{bookinfo.author.get(0)}
    void insertBookInfo(@Param("bookinfo")BookInfoModel bookinfo,@Param("author") String  author);

    @Select("select COUNT(*) from book_info where book_info_id = #{bookinfo.id}") //
    String checkBookInfoByid(@Param("bookinfo")BookInfoModel bookinfo);





}
