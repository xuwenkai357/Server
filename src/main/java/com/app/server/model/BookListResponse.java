package com.app.server.model;

import java.util.List;

public class BookListResponse {

    List<BookListModel> bookListModels;

    public List<BookListModel> getBookListModels() {
        return bookListModels;
    }

    public void setBookListModels(List<BookListModel> bookListModels) {
        this.bookListModels = bookListModels;
    }
}
