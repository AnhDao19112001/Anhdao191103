package repository;

import model.Booking;
import model.Category;

import java.util.ArrayList;
import java.util.List;

public class CategoryRepository implements ICategoryRepository{
    private static List<Category> categoryList;
    static {
        categoryList = new ArrayList<>();
        categoryList.add(new Category(1, "Hài"));
        categoryList.add(new Category(2,"Thơ"));
        categoryList.add(new Category(3,"Thơ"));
        categoryList.add(new Category(4,"Thơ"));
        categoryList.add(new Category(5,"Thơ"));
    }
    @Override
    public List<Category> fillAll() {
        return categoryList;
    }
}
