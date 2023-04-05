package repository;

import model.Booking;

import java.util.List;

public interface IBookRepository {
    List<Booking> findAll();
    Booking findByTitle(String title);
    void create(Booking booking);
    void update(int id, Booking booking);
    void delete(int id);
}
