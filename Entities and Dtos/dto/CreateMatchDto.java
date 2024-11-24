package com.example.dto;

import java.util.List;

public class CreateMatchDto {

    public String subject;

    public List<Long> userIds;


    public String getSubject() {
        return subject;
    }

    public List<Long> getUserIds() {
        return userIds;
    }
}
