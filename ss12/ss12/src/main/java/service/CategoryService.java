package service;

import model.Category;
import repository.CategoryRepository;
import repository.ICategoryRepository;

import java.util.List;

public class CategoryService implements ICategoryService{
    private ICategoryRepository iCategoryRepository = new CategoryRepository();
    @Override
    public List<Category> fillAll() {
        return iCategoryRepository.fillAll();
    }
}
