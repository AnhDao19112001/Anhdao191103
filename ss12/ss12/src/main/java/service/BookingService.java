package service;

import model.Booking;
import repository.BookingRepository;
import repository.IBookingRepository;

import java.util.List;

public class BookingService implements IBookingService{
private IBookingRepository iBookingRepository = new BookingRepository();
    @Override
    public List<Booking> fillAll(String name) {
        return iBookingRepository.fillAll(name);
    }

    @Override
    public void save(Booking book) {
        iBookingRepository.save(book);
    }

    @Override
    public Booking findById(int id) {
        return iBookingRepository.findById(id);
    }

    @Override
    public void update(int id, Booking book) {
        iBookingRepository.update(id, book);
    }

    @Override
    public void remove(Booking booking) {
        iBookingRepository.remove(booking);
    }
}
