package dao;

import models.CategoriesEntity;

import java.util.List;

public class test {
    public static void main(String[] args) {
        CategoriesDAO categoriesDAO = new CategoriesDAO();
        List<CategoriesEntity> list = categoriesDAO.getListCategories();
        for (CategoriesEntity cate:list)
        {
            System.out.println("Id: " + cate.getId() + " || " + "Name: " + cate.getcName() + " || " + cate.getcSlug());
        }
    }
}
