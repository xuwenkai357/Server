package com.app.server.model;

import java.util.List;

public class MyBorrowListResponse {

    List<MyBorrowListModel> myBorrowListModels;

    public List<MyBorrowListModel> getMyBorrowListModels() {
        return myBorrowListModels;
    }

    public void setMyBorrowListModels(List<MyBorrowListModel> myBorrowListModels) {
        this.myBorrowListModels = myBorrowListModels;
    }
}
