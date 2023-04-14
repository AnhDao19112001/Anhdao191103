package service;

import model.Booking;
import repository.BookingRepository;
import repository.IBookingRepository;

import java.util.List;

public class BookingService implements IBookingService{
private IBookingRepository iBookingRepository = new BookingRepository();
    @Override
    public List<Booking> fillAll() {
        return iBookingRepository.fillAll();
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
    public void remove(int id) {
        iBookingRepository.remove(id);
    }
}
