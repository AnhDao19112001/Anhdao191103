package service;

import model.Booking;

import java.util.List;

public interface IBookingService {
    List<Booking> fillAll();
    void save(Booking book);
    Booking findById(int id);
    void update(int id, Booking book);
    void remove(int id);
}
