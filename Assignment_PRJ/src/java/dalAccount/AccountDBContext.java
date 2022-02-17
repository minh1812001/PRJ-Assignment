/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dalAccount;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Minh-PC
 */
public class AccountDBContext extends DBContext {

    public Account getAccount(String username, String password) {
        try {
            String sql = "SELECT username,password,displayname FROM Account\n"
                    + "WHERE username = ? AND password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setDisplayname(rs.getString("displayname"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getPermission(String username, String url) {
        try {
            String sql = "SELECT COUNT(*) as Total FROM\n"
                    + "Account a INNER JOIN Account_Group ag ON a.username = ag.username\n"
                    + "		  INNER JOIN [Group] g ON g.gid = ag.gid\n"
                    + "		  INNER JOIN Group_Feature gf ON gf.gid = g.gid\n"
                    + "		  INNER JOIN Feature f ON f.fid = gf.fid\n"
                    + "WHERE a.username = ? AND f.url= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, url);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}
