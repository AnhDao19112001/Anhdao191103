package service;

import model.Booking;
import repository.BookRepository;
import repository.IBookRepository;

import java.util.List;

public class BookService implements IBookService{
    IBookRepository iBookRepository = new BookRepository();
    @Override
    public List<Booking> findAll() {
        return iBookRepository.findAll();
    }

    @Override
    public Booking findByTitle(String title) {
        return iBookRepository.findByTitle(title);
    }

    @Override
    public void create(Booking booking) {
        iBookRepository.create(booking);
    }

    @Override
    public void update(int id, Booking booking) {
        iBookRepository.update(id, booking);
    }

    @Override
    public void delete(int id) {
        iBookRepository.delete(id);
    }
}
