package com.app.server.model;

import java.util.List;

public class ShowDynamicListResponse {
    String  count;
    String  start;
    String  total;
    List<ShowDynamicResponse> showDynamics;

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

    public List<ShowDynamicResponse> getShowDynamics() {
        return showDynamics;
    }

    public void setShowDynamics(List<ShowDynamicResponse> showDynamics) {
        this.showDynamics = showDynamics;
    }
}
