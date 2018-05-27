package com.app.server.mapper;

import com.app.server.model.MyBorrowListModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface BorrowListMappper {

    @Select("SELECT A.Borrow_Id, A.Book_Id,A.Book_Info_Id, D.title,D.isbn13, D.author, D.image, A.Owner_Id, B.User_Name AS Owner_name,A.Borrower_Id,C.User_Name AS Borrower_name,A.Borrow_Time,A.Return_Time,A.Confine_Time,E.`Status`,A.Complete_Status\n" +
            "FROM borrow_list AS A \n" +
            "INNER JOIN user_info AS B ON A.Owner_Id = B.User_Id\n" +
            "INNER JOIN user_info AS C ON A.Borrower_Id = C.User_Id\n" +
            "INNER JOIN book_info AS D ON A.Book_Info_Id = D.Book_Info_Id\n" +
            "INNER JOIN book_list AS E ON A.Book_Id = E.Book_Id\n" +
            "WHERE A.Borrower_id = #{userid} ORDER BY A.BORROW_TIME DESC\n")
    List<MyBorrowListModel> findByBorrowid(@Param("userid") int userid);

    @Insert("INSERT INTO borrow_list (book_id,book_info_id,owner_id,borrower_id,borrow_time,complete_status) VALUES(#{book_id},#{book_info_id},#{owner_id},#{borrower_id},SYSDATE(),'0') ")
    void addBorrowList(@Param("book_id")int book_id ,@Param("book_info_id")int book_info_id,@Param("owner_id")int owner_id,@Param("borrower_id")int borrower_id);

    @Update("UPDATE borrow_list SET confine_time = SYSDATE() WHERE borrow_id = #{borrow_id}")
    void updateConfinetime(@Param("borrow_id") int borrow_id);

    @Update("UPDATE borrow_list SET return_time = SYSDATE() WHERE borrow_id = #{borrow_id}")
    void updateReturntime(@Param("borrow_id") int borrow_id);

    @Update("UPDATE borrow_list SET complete_status = '1' WHERE borrow_id = #{borrow_id}")
    void updateCompletestatus(@Param("borrow_id") int borrow_id);





}
