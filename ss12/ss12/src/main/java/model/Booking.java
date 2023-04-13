package model;

public class Booking {
    private int id;
    private String name;
    private int pageSize;
    private String authorId;
    private String categoryId;

    public Booking() {
    }

    public Booking(int id, String name, int pageSize, String authorId, String categoryId) {
        this.id = id;
        this.name = name;
        this.pageSize = pageSize;
        this.authorId = authorId;
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

    public String getAuthorId() {
        return authorId;
    }

    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}
