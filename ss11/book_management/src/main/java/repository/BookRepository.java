package repository;

import model.Booking;

import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository{
    private static List<Booking> bookList;
    static {
        bookList = new ArrayList<>();
        bookList.add(new Booking());
        bookList.add(new Booking());
        bookList.add(new Booking());
        bookList.add(new Booking());
        bookList.add(new Booking());
    }
    @Override
    public List<Booking> fillAll() {
        return bookList;
    }

    @Override
    public void save(Booking book) {
        bookList.add(book);
    }

    @Override
    public Booking findById(int id) {
        for (Booking a: bookList
        ) {
            if (a.getId() == id){
                return a;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Booking book) {
        for (int i = 0; i < bookList.size(); i++) {
            if (bookList.get(i).getId() == id) {
                bookList.set(i, book);
            }
        }
    }

    @Override
    public void remove(int id) {
        for (Booking a: bookList
        ) {
            if (a.getId() == id){
                bookList.remove(a);
                break;
            }
        }
    }
}
