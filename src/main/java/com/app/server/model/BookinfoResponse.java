package com.app.server.model;

import java.util.List;

public class BookinfoResponse {
    String  count;
    String  start;
    String  total;
    List<BookInfoModel> books;

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public List<BookInfoModel> getBooks() {
        return books;
    }

    public void setBooks(List<BookInfoModel> books) {
        this.books = books;
    }
}
