package com.app.server.model;

public class ShowDynamicResponse {
    DynamicModel bookReviewResponse;
    BookInfoLocalModel book;

    public DynamicModel getBookReviewResponse() {
        return bookReviewResponse;
    }

    public void setBookReviewResponse(DynamicModel bookReviewResponse) {
        this.bookReviewResponse = bookReviewResponse;
    }

    public BookInfoLocalModel getBook() {
        return book;
    }

    public void setBook(BookInfoLocalModel book) {
        this.book = book;
    }
}
