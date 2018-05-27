package com.app.server.model;

import java.util.List;

public class DynamicResponse {
    String  count;
    String  start;
    String  total;
    List<DynamicModel> reviews;

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

    public List<DynamicModel> getReviews() {
        return reviews;
    }

    public void setReviews(List<DynamicModel> reviews) {
        this.reviews = reviews;
    }

    @Override
    public String toString() {
        return "DynamicResponse{" +
                "count='" + count + '\'' +
                ", start='" + start + '\'' +
                ", total='" + total + '\'' +
                ", reviews=" + reviews +
                '}';
    }
}
