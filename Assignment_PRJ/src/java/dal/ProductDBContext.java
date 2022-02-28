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
import model.Product;

/**
 *
 * @author Minh-PC
 */
public class ProductDBContext extends DBContext {

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setQuantity(rs.getInt("quantity"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setImageURL(rs.getString("imageURL"));
                p.setCreated_date(rs.getDate("created_date"));
                p.setCategory_id(rs.getInt("category_id"));

                products.add(p);
            }

        } catch (SQLException e) {
        }
        return products;

    }

    public ArrayList<Product> getProductsByCategoryId(int categoryId) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "select * from Product where category_id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, categoryId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setQuantity(rs.getInt("quantity"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setImageURL(rs.getString("imageURL"));
                p.setCreated_date(rs.getDate("created_date"));
                p.setCategory_id(rs.getInt("category_id"));

                products.add(p);
            }

        } catch (SQLException e) {
        }
        return products;
    }

}
