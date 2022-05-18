/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Article;

/**
 *
 * @author MyPC
 */
public class ArticleDAO extends DBContext{
    
    public Article getArticleById(int id) throws Exception{
        Article a = new Article();
        String sql = "select * from article where id = ?";
        Connection con = null;
        PreparedStatement p = null;
        ResultSet r = null;
        try {
            con = getConnection();
            p = con.prepareStatement(sql);
            p.setInt(1, id);
            r = p.executeQuery();
            if (r.next()) {
                a.setId(r.getInt("id"));
                a.setTitle(r.getString("title"));
                a.setImage(r.getString("image"));
                a.setContent(r.getString("content"));
                a.setDate(r.getDate("date"));
                a.setAuthor(r.getString("author"));
                a.setShortContent(r.getString("shortContent"));
                return a;
            }
        } catch (Exception e) {
            throw e;
        } finally{
            closeConnection(r, p, con);
        }
        return null;
    }
    
    public Article getNewestArticle() throws Exception{
        Article a = new Article();
        String sql = "select top 1  * FROM  Article order by date desc";
        Connection con = null;
        PreparedStatement p = null;
        ResultSet r = null;
        try {
            con = getConnection();
            p = con.prepareStatement(sql);
            r = p.executeQuery();
            if (r.next()) {
                a.setId(r.getInt("id"));
                a.setTitle(r.getString("title"));
                a.setImage(r.getString("image"));
                a.setContent(r.getString("content"));
                a.setDate(r.getDate("date"));
                a.setAuthor(r.getString("author"));
                a.setShortContent(r.getString("shortContent"));
            }
        } catch (Exception e) {
            throw e;
        } finally{
            closeConnection(r, p, con);
        }
        return a;
    }
    
    public ArrayList<Article> get5LastArticles() throws Exception{
        ArrayList<Article> listA = new ArrayList<>();
        String sql = "select top 5 * FROM  Article order by [date] desc";
        Connection con = null;
        PreparedStatement p = null;
        ResultSet r = null;
        try {
            con = getConnection();
            p = con.prepareStatement(sql);
            r = p.executeQuery();
            while (r.next()) {
                Article a = new Article();
                a.setId(r.getInt("id"));
                a.setTitle(r.getString("title"));
                a.setImage(r.getString("image"));
                a.setContent(r.getString("content"));
                a.setDate(r.getDate("date"));
                a.setAuthor(r.getString("author"));
                a.setShortContent(r.getString("shortContent"));
                listA.add(a);
            }
        } catch (Exception e) {
            throw e;
        } finally{
            closeConnection(r, p, con);
        }
        return listA;
    }
    
    public ArrayList<Article> searchByTitle(String searchStr, int page, int maxPageItem) throws Exception{
        ArrayList<Article> listA = new ArrayList<>();
        String sql = "SELECT * FROM ( SELECT ROW_NUMBER() OVER(ORDER BY id) as Number,* FROM Article WHERE title LIKE ? ) as DataSearch where Number between ? and ?";
        Connection con = null;
        PreparedStatement p = null;
        ResultSet r = null;
        try {
            con = getConnection();
            p = con.prepareStatement(sql);
            p.setString(1, "%" + searchStr + "%");
            p.setInt(2, page*maxPageItem-maxPageItem+1);
            p.setInt(3, page*maxPageItem);
            r = p.executeQuery();
            while (r.next()) {
                Article a = new Article();
                a.setId(r.getInt("id"));
                a.setTitle(r.getString("title"));
                a.setImage(r.getString("image"));
                a.setContent(r.getString("content"));
                a.setDate(r.getDate("date"));
                a.setAuthor(r.getString("author"));
                a.setShortContent(r.getString("shortContent"));
                listA.add(a);
            }
        } catch (Exception e) {
            throw e;
        } finally{
            closeConnection(r, p, con);
        }
        return listA;
    }
    
    public int getTotalItemSearch(String searchStr) throws Exception{
        ArrayList<Article> listA = new ArrayList<>();
        String sql = "select count (*) from article where title like ?";
        Connection con = null;
        PreparedStatement p = null;
        ResultSet r = null;
        try {
            int count = 0;
            con = getConnection();
            p = con.prepareStatement(sql);
            p.setString(1, "%" + searchStr + "%");
            r = p.executeQuery();
            if (r.next()) {
                count = r.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally{
            closeConnection(r, p, con);;
        }
    }
    
}
