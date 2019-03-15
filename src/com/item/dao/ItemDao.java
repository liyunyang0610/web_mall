package com.item.dao;

import com.famework.dao.DataUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class ItemDao {

    private QueryRunner qr = new QueryRunner(DataUtil.getDataSource());

    public List<Map<String, Object>> findAll() {
        List<Map<String, Object>> list = new ArrayList<>();
        String sql = "select * from items";

        try {
            list = qr.query(sql, new MapListHandler());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public Map<String, Object> queryOne(int id) {
        String sql = "select * from items where id=?";
        try {
            Map<String, Object> query = qr.query(sql, new MapHandler(), id);
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int add(Map<String, Object> item) {
        String sql = "INSERT INTO db_mall.items (id, name, city, price, number, picture) VALUES (null,?,?,?,?,?)";
        try {
            int i = qr.update(sql, item.get("name"), item.get("city"), item.get("price"), item.get("number"), item.get("picture"));
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int update(Map<String, Object> item) {
        String sql = "UPDATE db_mall.items SET name = ?, city = ?, price = ?, number = ?, picture = ? WHERE id = ?";
        try {
            int i = qr.update(sql, item.get("name"), item.get("city"), item.get("price"), item.get("number"), item.get("picture"),item.get("id"));
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int delete(int id) {
        String sql = "delete from items  WHERE id = ?";
        try {
            int i = qr.update(sql, id);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

}
