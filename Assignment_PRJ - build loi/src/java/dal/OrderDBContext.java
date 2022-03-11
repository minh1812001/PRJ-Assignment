/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author Minh-PC
 */
public class OrderDBContext extends DBContext {

    public int CreateById(Order o) {

        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([user_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id])\n"
                    + "     VALUES(?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, o.getUser_id());
            stm.setDouble(2, o.getTotalPrice());
            stm.setString(3, o.getNote());
            stm.setInt(4, o.getShipping_id());
            stm.executeUpdate();
            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShippingDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
