package com.app.server.model;

public class BookInfoLocalModel {
    String book_info_id;
    String isbn13;
    String title;
    String image;
    String publisher;
    String pubdate;
    String author;
    String summary;
    String page;
    String price;
    String hot;
    String enter_time;

    public String getBook_info_id() {
        return book_info_id;
    }

    public void setBook_info_id(String book_info_id) {
        this.book_info_id = book_info_id;
    }

    public String getIsbn13() {
        return isbn13;
    }

    public void setIsbn13(String isbn13) {
        this.isbn13 = isbn13;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPubdate() {
        return pubdate;
    }

    public void setPubdate(String pubdate) {
        this.pubdate = pubdate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getHot() {
        return hot;
    }

    public void setHot(String hot) {
        this.hot = hot;
    }

    public String getEnter_time() {
        return enter_time;
    }

    public void setEnter_time(String enter_time) {
        this.enter_time = enter_time;
    }

    @Override
    public String toString() {
        return "BookInfoLocalModel{" +
                "book_info_id='" + book_info_id + '\'' +
                ", isbn13='" + isbn13 + '\'' +
                ", title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", publisher='" + publisher + '\'' +
                ", pubdate='" + pubdate + '\'' +
                ", author='" + author + '\'' +
                ", summary='" + summary + '\'' +
                ", page='" + page + '\'' +
                ", price='" + price + '\'' +
                ", hot='" + hot + '\'' +
                ", enter_time='" + enter_time + '\'' +
                '}';
    }
}
