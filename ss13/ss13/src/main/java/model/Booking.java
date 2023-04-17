package model;

public class Booking {
    private Integer id;
    private String name;
    private Integer pageSize;
    private Integer author;
    private Integer category;

    public Booking() {
    }

    public Booking(Integer id, String name, Integer pageSize, Integer author, Integer category) {
        this.id = id;
        this.name = name;
        this.pageSize = pageSize;
        this.author = author;
        this.category = category;
    }

    public Booking(String name, Integer pageSize, Integer author, Integer category) {
        this.name = name;
        this.pageSize = pageSize;
        this.author = author;
        this.category = category;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getAuthor() {
        return author;
    }

    public void setAuthor(Integer author) {
        this.author = author;
    }

    public Integer getCategory() {
        return category;
    }

    public void setCategory(Integer category) {
        this.category = category;
    }
}
