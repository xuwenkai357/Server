package com.app.server.model;

import java.util.List;

public class MessageResponse {
    Integer total;
    List<MessageModel> messages;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<MessageModel> getMessages() {
        return messages;
    }

    public void setMessages(List<MessageModel> messages) {
        this.messages = messages;
    }

    @Override
    public String toString() {
        return "MessageResponse{" +
                "total=" + total +
                ", messages=" + messages +
                '}';
    }
}
