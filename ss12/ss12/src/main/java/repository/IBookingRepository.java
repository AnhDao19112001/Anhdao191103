package repository;

import model.Booking;

import java.util.List;

public interface IBookingRepository {
    List<Booking> fillAll(String name);
    void save(Booking book);
    Booking findById(int id);
    void update(int id, Booking book);
    void remove(Booking booking);
}
