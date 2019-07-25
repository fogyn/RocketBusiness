package com.example.rocketbusiness.db;

import com.example.rocketbusiness.model.Business;


import java.sql.SQLException;
import java.util.Collection;

public interface RBRepository {

    Collection<Business> getBusiness();

    Business getBusiness(int id);
    Business getBusinessTest(int id) throws SQLException, ClassNotFoundException;
}
