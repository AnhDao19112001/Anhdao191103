package repository;

import model.Booking;

import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository{
    private static List<Booking> bookList;
    static {
        bookList = new ArrayList<>();
        bookList.add(new Booking(1,"Ông lão đánh cá và con cá xấu",5,"tự chế","Hài"));
        bookList.add(new Booking(2,"Tặng",1,"Anh Đào","Thơ"));
        bookList.add(new Booking(3,"Nhớ",1,"Anh Đào","Thơ"));
        bookList.add(new Booking(4,"Tội yêu người",1,"Anh Đào","Thơ"));
        bookList.add(new Booking(5,"Cái gì ta để lại",1,"Anh Đào","Thơ"));
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
