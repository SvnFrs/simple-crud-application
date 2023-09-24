package com.dao;

import com.entity.Stuff;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StuffDAO {
    private Connection conn;
    public StuffDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean createStuff(Stuff stuff) {
        boolean flag = false;
        try {
            String sql = "INSERT INTO stuff(name, birthday, age, language, university) VALUES(?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, stuff.getName());
            ps.setDate(2, stuff.getBirthday());
            ps.setInt(3, stuff.getAge());
            ps.setString(4, stuff.getLanguage());
            ps.setString(5, stuff.getUniversity());
            int i = ps.executeUpdate();
            if (i == 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    public List<Stuff> readStuff() {
        List<Stuff> list = new ArrayList<Stuff>();
        Stuff stuff = null;
        try {
            String sql = "SELECT * FROM stuff";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                stuff = new Stuff();
                stuff.setId(rs.getInt(1));
                stuff.setName(rs.getString(2));
                stuff.setBirthday(rs.getDate(3));
                stuff.setAge(rs.getInt(4));
                stuff.setLanguage(rs.getString(5));
                stuff.setUniversity(rs.getString(6));
                list.add(stuff);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public boolean updateStuff(Stuff stuff) {
        boolean flag = false;
        try {
            String sql = "UPDATE stuff SET (name, birthday, age, language, university) = (?, ?, ?, ?, ?) WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, stuff.getName());
            ps.setDate(2, stuff.getBirthday());
            ps.setInt(3, stuff.getAge());
            ps.setString(4, stuff.getLanguage());
            ps.setString(5, stuff.getUniversity());
            ps.setInt(6, stuff.getId());
            int i = ps.executeUpdate();
            if (i == 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    public boolean deleteStuff(int id) {
        boolean flag = false;
        try {
            String sql = "DELETE FROM stuff WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return flag;
    }

    public Stuff getStuffID(int id) {
        Stuff stuff = null;
        try {
            String sql = "SELECT * FROM stuff WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                stuff = new Stuff();
                stuff.setId(rs.getInt(1));
                stuff.setName(rs.getString(2));
                stuff.setBirthday(rs.getDate(3));
                stuff.setAge(rs.getInt(4));
                stuff.setLanguage(rs.getString(5));
                stuff.setUniversity(rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stuff;
    }
}
