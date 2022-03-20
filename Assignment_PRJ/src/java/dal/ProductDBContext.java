/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author Minh-PC
 */
public class ProductDBContext extends DBContext {
// tat ca san pham

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

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;

    }
// san pham theo loai

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

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
// count product

    public int getTotalProducts() {
        try {
            String sql = "select count(id)  from Product ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
// phan trang 6 product/ page

    public ArrayList<Product> getProductsWithPagging(int page, int PAGE_SIZE) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "select * from Product order by id\n"
                    + "offset (?-1)*? row fetch next ? rows only";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, page);
            stm.setInt(2, PAGE_SIZE);
            stm.setInt(3, PAGE_SIZE);
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

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;

    }

    // search san pham theo teen
    public ArrayList<Product> search(String keyword) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "select *  from Product where name like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + keyword + "%");
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

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public Product getProductById(int productId) {

        try {
            String sql = "select *  from Product where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
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

                return p;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
// su dung tool 

    public Product getProductById1(int productId) {
        try {
            String sql = "select *  from Product where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageURL(rs.getString(6))
                        .created_date(rs.getDate(7))
                        .category_id(rs.getInt(8)).build();
                return product;
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //them product in shop
    public void insertProduct(Product p) {
        try {
            String sql = "INSERT INTO [dbo].[Product]\n"
                    + "           ([name]\n"
                    + "           ,[quantity]\n"
                    + "           ,[price]\n"
                    + "           ,[description]\n"
                    + "           ,[imageURL]\n"
                    + "           ,[Created_date]\n"
                    + "           ,[category_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, p.getName());
            stm.setInt(2, p.getQuantity());
            stm.setDouble(3, p.getPrice());
            stm.setString(4, p.getDescription());
            stm.setString(5, p.getImageURL());
            stm.setDate(6, p.getCreated_date());
            stm.setInt(7, p.getCategory_id());
            stm.executeUpdate();
            ResultSet rs = stm.getGeneratedKeys();
       

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        Product p ;
        String date = "2021-11-1";
        Date x = Date.valueOf(date);
        String name = "hong";
        p = new Product(11, 1, name, 50, 10000, "good", "good",x);
//        System.out.println(new ProductDBContext().insertProduct(p));
    }
}
