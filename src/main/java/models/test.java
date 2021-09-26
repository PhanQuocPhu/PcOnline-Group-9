package models;

import entity.CategoriesEntity;

import java.sql.SQLException;
import java.util.List;

public class test {
    public static void main(String[] args) throws SQLException {
        CategoriesModel categoriesModel = new CategoriesModel();
        List<CategoriesEntity> list = categoriesModel.getAll();
        /*System.out.println("success");*/
        for (CategoriesEntity cate:list)
        {
            System.out.println("Id: " + cate.getId() + " || " + "Name: " + cate.getcName() + " || " + cate.getcSlug());
        }
    }
}
