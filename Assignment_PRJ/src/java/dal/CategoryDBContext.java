/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;
import model.User;

/**
 *
 * @author Minh-PC
 */
public class CategoryDBContext extends DBContext{

    // thao tac vs category

    public ArrayList<Category> getAllCategory() {
         ArrayList<Category> categories = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Category";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                categories.add(c);
            }

        } catch (SQLException e) {
        }
        return categories;
        
    }
    
}
