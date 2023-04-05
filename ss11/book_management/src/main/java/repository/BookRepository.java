package repository;

import model.Booking;

import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository{
    static List<Booking> bookingList = new ArrayList<>();
    static {
        bookingList.add(new Booking(1,"DevUp",203,"Nguyễn Hiền","IT"));
        bookingList.add(new Booking(2,"Ông lão đánh cá và con cá xấu",5,"Tự chế","Cảm lạnh"));
        bookingList.add(new Booking(3,"Tuổi thơ dữ dội",203,"Phùng Quán","Chiến Tranh"));
        bookingList.add(new Booking(4,"Cánh cửa thép bị mở toang",203,"Không nhớ","Chiến sự"));
    }
    @Override
    public List<Booking> findAll() {
        return bookingList;
    }

    @Override
    public Booking findByTitle(String title) {
        for (Booking book: bookingList) {
            if (title == book.getTitle()){
                return book;
            }
        }
        return null;
    }

    @Override
    public void create(Booking booking) {
        bookingList.add(booking);
    }

    @Override
    public void update(int id, Booking booking) {
        for (int i = 0; i < bookingList.size(); i++) {
            if (bookingList.get(i).getId()==id){
                bookingList.set(i,booking);
            }
        }
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i < bookingList.size(); i++) {
            if (id==bookingList.get(i).getId()){
                bookingList.remove(i);
            }
        }
    }
}
