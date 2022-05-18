
import dao.ArticleDAO;
import java.util.ArrayList;
import java.util.List;
import model.Article;
import model.ArticlePage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MyPC
 */
public class TestClass {
    public static void main(String[] args) {

        ArticleDAO dao = new ArticleDAO();
        
        ArticlePage arts = new ArticlePage();
        String searchStr = "t";
        String page = "1";
        String maxPageItem = "2";
        if (maxPageItem != null) {
            arts.setMaxPageItem(Integer.parseInt(maxPageItem));
        } else {
            arts.setMaxPageItem(2);
        }
        if (page != null) {
            arts.setPage(Integer.parseInt(page));
        } else{
            arts.setPage(1);
        }
        int startItem = (arts.getPage() - 1) * arts.getMaxPageItem() + 1;
//        ArrayList<Article> result = dao.searchByTitle(searchStr, startItem, arts.getPage() * arts.getMaxPageItem());
        System.out.println(searchStr + "|" + startItem + "|" + arts.getPage() + "|" + arts.getMaxPageItem());
//        for (Article result1 : result) {
//            System.out.println(result1.getTitle());
//        }
        
//        System.out.println("abc " + dao.getTotalItemSearch(searchStr));
    }
}