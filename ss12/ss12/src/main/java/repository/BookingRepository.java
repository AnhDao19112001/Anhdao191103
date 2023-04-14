package repository;

import model.Booking;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingRepository implements IBookingRepository{
    private static final String INSERT_BOOK_SQL = "";
    private static final String FIND_BY_NAME = "";
    @Override
    public List<Booking> fillAll(String name) {
        List<Booking> bookingList = new ArrayList<>();
        try {
            CallableStatement callableStatement = DBRepository.getConnection().prepareCall("call list_book (?)");
            callableStatement.setString(1,name);
            ResultSet resultSet = callableStatement.executeQuery();
            Booking booking = new Booking();
            while (resultSet.next()){
                booking.setId(resultSet.getInt("id"));
                booking.setName(resultSet.getString("name"));
                booking.setPageSize(resultSet.getInt("pageSize"));
                booking.setAuthor(resultSet.getString("author"));
                booking.setCategoryId(String.valueOf(resultSet.getInt("categoryId")));
                bookingList.add(booking);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingList;
    }

    @Override
    public void save(Booking book) {
        CallableStatement callableStatement = null;
        try {
            callableStatement = DBRepository.getConnection().prepareCall("call insert_book(?,?,?)");
            callableStatement.setString(1, book.getName());
            callableStatement.setString(2, book.getAuthor());
            callableStatement.setString(3, book.getCategoryId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Booking findById(int id) {
        CallableStatement callableStatement = null;
        try{
            callableStatement = DBRepository.getConnection().prepareCall("call find_book_by_id (?) ");
            callableStatement.setInt(1,id);
            Booking booking;
            ResultSet resultSet = callableStatement.executeQuery();
            if(resultSet.next()){
                booking = new Booking();
                booking.setId(resultSet.getInt("id"));
                booking.setName(resultSet.getString("name"));
                booking.setPageSize(resultSet.getInt("pageSize"));
                booking.setAuthor(resultSet.getString("author"));
                booking.setCategoryId(String.valueOf(resultSet.getInt("category")));
                return booking;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public void update(int id, Booking book) {
        try{
            CallableStatement callableStatement = DBRepository.getConnection().prepareCall("call update_book (?,?,?,?)");
            callableStatement.setString(1,book.getName());
            callableStatement.setString(2,book.getAuthor());
            callableStatement.setInt(3,book.getPageSize());
            callableStatement.setString(4,book.getCategoryId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void remove(Booking booking) {
        try{
            CallableStatement callableStatement = DBRepository.getConnection().prepareCall("call delete_book (?)");
            callableStatement.setInt(1, booking.getId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
