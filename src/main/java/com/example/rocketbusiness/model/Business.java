package com.example.rocketbusiness.model;

import java.sql.SQLException;
import java.util.Base64;

public class Business {

    private String title;
    private String about;
    private String image;

    public Business(){}

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
    public void setImage(byte[] image) throws SQLException {

        //byte[] imgData = image.getBytes(1, (int) image.length());
        String encoder = Base64.getEncoder().encodeToString(image);
        this.image = encoder;
    }

    public String getImage() {
        return image;
    }
}
