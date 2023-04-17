package service;

import model.Booking;

import java.util.List;

public interface IBookingService {
    List<Booking> findAll();
    void add();
    List<Booking> delete(int id);
}
