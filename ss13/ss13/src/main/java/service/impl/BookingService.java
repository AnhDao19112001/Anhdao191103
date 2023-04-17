package service.impl;

import model.Booking;
import repository.IBookingRepository;
import repository.impl.BookingRepository;
import service.IBookingService;

import java.util.List;

public class BookingService implements IBookingService {
    private IBookingRepository iBookingRepository = new BookingRepository();


    @Override
    public List<Booking> findAll() {
        return iBookingRepository.findAll();
    }

    @Override
    public void add() {
        iBookingRepository.add();
    }

    @Override
    public List<Booking> delete(int id) {
        return iBookingRepository.delete(id);
    }
}
