/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import models.Cart;
import models.Item;
import models.account;
import models.orderDetail;
import models.shopCategory;
import models.shopProduct;

/**
 *
 * @author my do
 */
//load data tu dtb
public class dao {

    public dao() {
    }

    Connection con = null; //kn vs sql
    PreparedStatement ps = null;//nem query sang sql
    ResultSet rs = null;//nhan result

    
    public List<shopProduct> getAllShopProduct() {
        List<shopProduct> list = new ArrayList<>();
        String query = "select * from Shop_product_HE163087";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new shopProduct(rs.getInt(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(2)
                ));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<shopProduct> getShopProductByPage(List<shopProduct> list, int start, int end) {
        List<shopProduct> list1 = new ArrayList<>();

        for (int i = start; i < end; i++) {
            list1.add(list.get(i));
        }
        return list1;
    }

    public List<shopProduct> getShopProductByCtg(String cid) {
        List<shopProduct> list1 = new ArrayList<>();
        String query = "select * from [Shop_product_He163087]\n"
                + "where category_id=?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list1.add(new shopProduct(rs.getInt(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(2)
                ));
            }
        } catch (Exception e) {
        }

        return list1;
    }

    public List<shopProduct> getTop3ShopProductByCtg(String cid, String id) {
        List<shopProduct> list1 = new ArrayList<>();
        String query = "select top 3 * from [Shop_product_He163087]\n"
                + "where category_id=? and id !=?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            ps.setString(2, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list1.add(new shopProduct(rs.getInt(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(2)
                ));
            }
        } catch (Exception e) {
        }

        return list1;
    }

    public List<shopProduct> searchByName(String txt) {
        List<shopProduct> list = new ArrayList<>();
        String query = "select * from [Shop_product_He163087]\n"
                + "where productName like ?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new shopProduct(rs.getInt(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(2)
                ));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public shopProduct getShopProductById(String pid) {
        String query = "select * from [Shop_product_He163087]\n"
                + "where id=?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                shopProduct o = new shopProduct(rs.getInt(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(2));
                return o;
            };
        } catch (Exception e) {
        }
        return null;
    }

    public List<shopCategory> shopCtg() {
        List<shopCategory> list = new ArrayList<>();
        String query = "select * from Shop_category_HE163087";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new shopCategory(rs.getInt(1),
                        rs.getString(2)
                ));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delProduct(String id) {
        String query = "DELETE FROM [Shop_product_He163087]\n"
                + "      WHERE id=?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateProduct(String id, String cid, String name, String price, String dis, String des, String quanti, String img) {
        String query = "UPDATE [dbo].[Shop_product_He163087]\n"
                + "   SET [category_id] = ?\n"
                + "      ,[productName] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[discount] = ?\n"
                + "      ,[img] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[quantity] = ?\n"
                + " WHERE id=?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            ps.setString(2, name);
            ps.setString(3, price);
            ps.setString(4, dis);
            ps.setString(6, des);
            ps.setString(7, quanti);
            ps.setString(5, img);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addProduct(String cid, String name, String price, String dis, String des, String quanti, String img) {
        String query = "INSERT INTO [Shop_product_He163087]\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            ps.setString(2, name);
            ps.setString(3, price);
            ps.setString(4, dis);
            ps.setString(6, des);
            ps.setString(7, quanti);
            ps.setString(5, img);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addCtg(String name) {
        String query = "INSERT INTO [Shop_category_HE163087]\n"
                + "VALUES(?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

//-------------------------account-----------------------------------
    public account login(String user, String pass) {
        String query = "select * from User_HE163087\n"
                + "where [username] = ? and pass=?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public account checkAccExist(String user) {
        String query = "select * from User_HE163087\n"
                + "where [username] = ?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void addUser(String uname, String fname, String email, String phone, String addr, String pass, String repass) {
        String query = "INSERT INTO [User_HE163087]          \n"
                + "     VALUES(?,?,?,?,?,?,1)";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, uname);
            ps.setString(2, pass);
            ps.setString(3, fname);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, addr);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateUser(String uname, String fname, String email, String phone, String addr, String pass) {
        String query = "UPDATE [User_HE163087]\n"
                + "   SET [pass] = ?,[name] =?,[email] = ?,[phone] = ?,[address] = ? ,[role] = 1\n"
                + " WHERE [username] =?";
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            ps.setString(1, pass);
            ps.setString(2, fname);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, addr);
            ps.setString(6, uname);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
//(String id, String cid, String name, String price, String dis, String des, String quanti, String img) 

    public static void main(String[] args) {
        dao dao = new dao();
        List<orderDetail> list = dao.orsdetail();
        for (orderDetail detail : list) {
            System.out.println(detail);
        }
    }

    public void addOrder(account a, Cart c) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();

        try {
            String query = "INSERT INTO [Order_HE163087]\n"
                    + "     VALUES(?,?,?)";
            con = new DBContext().getConnection();// mo kn vs sql
            PreparedStatement ps = con.prepareStatement(query);
            ps.setDouble(1, c.getTotal());
            ps.setString(2, date);
            ps.setInt(3, a.getId());
            ps.executeUpdate();

            String query1 = "select top 1 id from [Order_HE163087]\n"
                    + "     order by id desc";
            PreparedStatement ps1 = con.prepareStatement(query1);
            rs = ps1.executeQuery();

            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : c.getItems()) {
                    String query2 = "INSERT INTO [OrderDetail_HE163087]\n"
                            + "     VALUES(?,?,?)";
                    PreparedStatement ps2 = con.prepareStatement(query2);
                    ps2.setInt(1, oid);
                    ps2.setInt(2, i.getProduct().getId());
                    ps2.setInt(3, i.getNum());
                    ps2.executeUpdate();
                }
            }
            String query3 = " UPDATE Shop_product_He163087 \n"
                    + "  SET quantity=quantity-?\n"
                    + "  WHERE ID =?";
            for (Item i : c.getItems()) {
                PreparedStatement ps3 = con.prepareStatement(query3);
                ps3.setInt(1, i.getNum());
                ps3.setInt(2, i.getProduct().getId());
                ps3.executeUpdate();

            }

        } catch (Exception e) {
        }
    }
//----------------------------admin------------------------------

    public List<orderDetail> orsdetail() {
        List<orderDetail> list = new ArrayList<>();
        String query = "select o.id, u.name, u.username, u.phone, u.address, o.orderDate, s.productName, d.quantity,o.total\n"
                + "from Shop_product_He163087 s, Order_HE163087 o , OrderDetail_HE163087 d, User_HE163087 u\n"
                + "where s.id=d.productID and d.orderID=o.id and o.UserID=u.id and d.quantity<>0";
//        int id 1, String name2, String uname3, String phone4, String addr5, String date6, double total7, int quantity8, String pName9) {
        try {
            con = new DBContext().getConnection();// mo kn vs sql
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new orderDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(9),
                        rs.getInt(8),
                        rs.getString(7)));

            }
        } catch (Exception e) {
        }
        return list;
    }

}
