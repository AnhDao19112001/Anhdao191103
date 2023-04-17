package repository;

import model.Booking;

import java.util.List;

public interface IBookingRepository {
    List<Booking> findAll();
    void add();
    List<Booking> delete(int id);
}
