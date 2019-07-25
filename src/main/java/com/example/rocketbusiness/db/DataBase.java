package com.example.rocketbusiness.db;

import com.example.rocketbusiness.model.Business;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.Collection;

@Repository
public class DataBase implements RBRepository {

    private static final String SELECT_BUSINESS = "SELECT * FROM Business";
    private static final String SELECT_BUSINESS_BY_ID = "SELECT * FROM Business WHERE testid = ?";

    private String value;

    private JdbcTemplate jdbcTemplate;
    private static com.mysql.jdbc.Connection connection;

    public DataBase(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

//    public DataBase(){
//
//    }

    @Override
    public Collection<Business> getBusiness() {
        return jdbcTemplate.query(SELECT_BUSINESS, CUSTOMER_MAPPER);

    }

    @Override
    public Business getBusiness(int id) {
        Object[] arguments = new Object[]{id};
        return jdbcTemplate.queryForObject(SELECT_BUSINESS_BY_ID, arguments, CUSTOMER_MAPPER);

    }

    private RowMapper<Business> CUSTOMER_MAPPER = (resultSet, i) -> {
        Business business = new Business();
        business.setTitle(resultSet.getString("Title"));
        business.setAbout(resultSet.getString("About"));
        byte[] im = resultSet.getBytes("Image");
        business.setImage(im);

        return business;
    };

    @Override
    public Business getBusinessTest(int id) throws SQLException, ClassNotFoundException {

        return null;

    }


}
