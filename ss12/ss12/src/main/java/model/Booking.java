package model;

public class Booking {
    private int id;
    private String name;
    private int pageSize;
    private String author;
    private String categoryId;

    public Booking() {
    }

    public Booking(int id, String name, int pageSize, String author, String categoryId) {
        this.id = id;
        this.name = name;
        this.pageSize = pageSize;
        this.author = author;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String authorId) {
        this.author = author;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}
