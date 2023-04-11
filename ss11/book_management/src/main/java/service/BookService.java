package service;

import model.Booking;
import repository.BookRepository;
import repository.IBookRepository;

import java.util.List;

public class BookService implements IBookService{
    IBookRepository iBookRepository = new BookRepository();
    @Override
    public List<Booking> findAll() {
        return iBookRepository.fillAll();
    }

    @Override
    public Booking findById(int id) {
        return iBookRepository.findById(id);
    }


    @Override
    public void save(Booking booking) {
        iBookRepository.save(booking);
    }

    @Override
    public void update(int id, Booking booking) {
        iBookRepository.update(id, booking);
    }

    @Override
    public void remove(int id) {
        iBookRepository.remove(id);
    }
}
