package com.app.server.mapper;

import com.app.server.model.BookListModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface BookListMappper {


    @Select("SELECT A.Book_Id, A.Owner_Id, B.User_Name AS Owner_name, A.Book_Info_Id, C.title, C.image, C.author, A.`Status`,F.Borrow_Id,F.Borrower_Id,F.BORROWER_NAME\n" +
            "FROM book_list AS A INNER JOIN user_info AS B ON A.Owner_Id = B.USER_ID \n" +
            "INNER JOIN book_info AS C ON A.Book_info_id = c.book_info_id\n" +
            "LEFT JOIN (SELECT D.Book_id,D.Borrow_Id,D.Borrower_Id,E.USER_NAME AS BORROWER_NAME FROM borrow_list AS D " +
                        "LEFT JOIN user_info AS E ON D.Borrower_Id = E.USER_ID \n" +
                        "WHERE D.Complete_Status = '0') AS F " +
            "ON A.Book_id = F.Book_id  \n" +
            "WHERE A.Owner_Id =#{userid}")
    List<BookListModel> findbyuserid(@Param("userid") int userid );

    @Insert("insert into book_list(owner_id,book_info_id,status)  value (#{userid},#{user_info_id},1) ")
    void addBookList(@Param("userid")int userid,@Param("user_info_id") int user_info_id);

    @Update("update book_list set status = #{status} where book_id = #{book_id} ")
    void updateBookListStatus(@Param("book_id") int book_id ,@Param("status") String status );

    @Select("SELECT STATUS FROM book_list WHERE BOOK_ID = #{book_id}")
    String checkBookStatus(@Param("book_id") int book_id);


    @Select("SELECT A.Book_Id, A.Owner_Id, B.User_Name AS Owner_name, A.Book_Info_Id, C.title, C.image, C.author, A.`Status`\n" +
            "FROM book_list AS A INNER JOIN user_info AS B ON A.Owner_Id = B.USER_ID \n" +
            "INNER JOIN book_info AS C ON A.Book_info_id = c.book_info_id\n" +
            "WHERE A.Book_Info_Id = #{book_info_id} and A.`Status` = 1 and A.OWNER_ID <> #{userid} ")
    List<BookListModel> findbyBookinfoid(@Param("book_info_id") int book_info_id ,@Param("userid") String userid);





}
