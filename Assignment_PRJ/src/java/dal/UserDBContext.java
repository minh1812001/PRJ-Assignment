/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.security.SecureRandom;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Minh-PC
 */
public class UserDBContext extends DBContext {

    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [User]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setRole_id(rs.getInt("role_id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setFull_name(rs.getString("full_name"));
                user.setDob(rs.getDate("dob"));
                user.setGender(rs.getBoolean("gender"));
                user.setAvatar(rs.getString("avatar"));
                user.setCreated_date(rs.getDate("created_date"));

                list.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<User> getAllUser(String username) {
        ArrayList<User> list = new ArrayList<>();
        try {
            String sql = "SELECT username, password, email, phone, full_name, dob, gender, avatar, created_date, role_id, ID "
                    + "FROM [User]"
                    + "WHERE [username] = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User acc = new User();
                acc.setUsername(rs.getString("username"));
                acc.setPassword(rs.getString("password"));
                acc.setEmail(rs.getString("email"));
                acc.setPhone(rs.getString("phone"));
                acc.setFull_name(rs.getString("full_name"));
                acc.setDob(rs.getDate("dob"));
                acc.setGender(rs.getBoolean("gender"));
                acc.setAvatar(rs.getString("avatar"));
                acc.setCreated_date(rs.getDate("created_date"));
                acc.setRole_id(rs.getInt("role_id"));
                acc.setId(rs.getInt("ID"));

                list.add(acc);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
        return list;
    }

    public User checkLogin(String username, String password) {
        try {
            String sql = "SELECT * FROM [User] WHERE [username] = ? AND password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User account = new User();
                account.setId(rs.getInt("id"));
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setPhone(rs.getString("phone"));
                account.setRole_id(rs.getInt("role_id"));
                account.setEmail(rs.getString("email"));
                account.setDob(rs.getDate("dob"));
                account.setCreated_date(rs.getDate("created_date"));
                account.setFull_name(rs.getString("full_name"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //DAO for create new account
    //DAO for create new account
    public void insert(int role_id,String username, String password, String email, String phone, String full_name, Date date) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([role_id]\n"
                + "           ,[username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[full_name]\n"
                + "           ,[created_date])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, role_id);
            stm.setString(2, username);
            stm.setString(3, password);
            stm.setString(4, email);
            stm.setString(5, phone);
            stm.setString(6, full_name);
            stm.setDate(7, date);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //DAO for check username

    public User checkUser(String user) {
        String sql = "SELECT * FROM [User] WHERE [username] = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User username = new User();
                username.setUsername(rs.getString("username"));
                username.setPassword(rs.getString("password"));
                username.setEmail(rs.getString("email"));
                username.setFull_name(rs.getString("full_name"));
                username.setPhone(rs.getString("phone"));
                return username;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void changePass(User u) {
        try {
            String sql = "UPDATE [User] SET password = ? WHERE [username] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, u.getPassword());
            stm.setString(2, u.getUsername());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean edit(User u) {
        String sql = "UPDATE [User] SET email = ?, phone = ?, full_name = ?, dob = ?, gender = ?, created_date = ? ,avatar =? WHERE username = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, u.getEmail());
            stm.setString(2, u.getPhone());
            stm.setString(3, u.getFull_name());
            stm.setDate(4, u.getDob());
            stm.setBoolean(5, u.isGender());
            stm.setDate(6, u.getCreated_date());
            stm.setString(7, u.getAvatar());
            stm.setString(8, u.getUsername());
            stm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public User checkEmail(String username, String email) {
        try {
            String sql = "SELECT [username], [email] FROM [User] WHERE [username] = ? AND [email] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User account = new User();
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int insertAll(User u) {
        int n = 0;
        try {
            String sql = "INSERT INTO [user](role_id, [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], created_date) VALUES (1,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, u.getUsername());
            stm.setString(2, u.getPassword());
            stm.setString(3, u.getEmail());
            stm.setString(4, u.getPhone());
            stm.setString(5, u.getFull_name());
            stm.setDate(6, u.getDob());
            stm.setBoolean(7, u.isGender());
            stm.setString(8, u.getAvatar());
            stm.setDate(9, u.getCreated_date());
            n = stm.executeUpdate();

        } catch (Exception e) {
        }
        return n;
    }

//    public void apply(int id) {
//        try {
//            String sql = "UPDATE [User] SET role_id = 1 WHERE ID = ?";
//            PreparedStatement stm = connection.prepareCall(sql);
//            stm.setInt(1, id);
//            stm.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//    public void deny(int id) {
//        try {
//            String sql = "DELETE from [User] WHERE ID = ?";
//            PreparedStatement stm = connection.prepareCall(sql);
//            stm.setInt(1, id);
//            stm.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
    public User checkEmail(String email) {
        String sql = "SELECT [username], password FROM [User] WHERE [email] = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User username = new User();
                username.setUsername(rs.getString("username"));
                username.setPassword(rs.getString("password"));
                return username;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public User getUserByUsername(String username) {
        try {
            String sql = "SELECT * FROM [User] WHERE [username] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("ID"));
                user.setRole_id(rs.getInt("role_id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setFull_name(rs.getString("full_name"));
                user.setDob(rs.getDate("dob"));
                user.setGender(rs.getBoolean("gender"));
                user.setAvatar(rs.getString("avatar"));
                user.setCreated_date(rs.getDate("created_date"));
                return user;
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public User getUserByUserId(int id) {
        try {
            String sql = "SELECT * FROM [User] WHERE [ID] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("ID"));
                user.setRole_id(rs.getInt("role_id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setFull_name(rs.getString("full_name"));
                user.setDob(rs.getDate("dob"));
                user.setGender(rs.getBoolean("gender"));
                user.setAvatar(rs.getString("avatar"));
                user.setCreated_date(rs.getDate("created_date"));
                return user;
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String generateOTP() {
        Random random = new Random();
        String otp = String.valueOf(100000 + random.nextInt(999999));
        return otp;
    }

    public String generateRandomPassword() {
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 8; i++) {
            int randomIndex = random.nextInt(chars.length());
            sb.append(chars.charAt(randomIndex));
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        
        System.out.println(new UserDBContext().getUserByUsername("minh1812001"));
    }
}
