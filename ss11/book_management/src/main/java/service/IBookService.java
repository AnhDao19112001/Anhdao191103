package service;

import model.Booking;

import java.util.List;

public interface IBookService {
    List<Booking> findAll();
    Booking findById(int id);
    void save(Booking booking);
    void update(int id, Booking booking);
    void remove(int id);
}
