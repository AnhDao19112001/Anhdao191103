package repository.impl;

import model.Booking;
import repository.DBRepository;
import repository.IBookingRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingRepository implements IBookingRepository {

    @Override
    public List<Booking> findAll() {
        Connection connection = DBRepository.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Booking> books = new ArrayList<>();
        try {
            if (connection != null) {
                statement = connection.prepareStatement("SELECT * FROM library.books");
                resultSet = statement.executeQuery();
                Booking book = null;
                while (resultSet.next()){
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    int pageSize = resultSet.getInt("page_size");
                    int authorId = resultSet.getInt("author_id");
                    int categoryId = resultSet.getInt("category_id");
                    book = new Booking(id,name,pageSize,authorId,categoryId);
                    books.add(book);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                resultSet.close();
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return books;
    }

    @Override
    public void add() {
        Connection connection = DBRepository.getConnection();
        PreparedStatement statement = null;
        Booking book = new Booking(8,"Nhớ",1,1,1);
        try {
            statement = connection.prepareStatement("call addBook(?,?,?,?,?)");
            statement.setInt(1,book.getId());
            statement.setString(2,book.getName());
            statement.setInt(3,book.getPageSize());
            statement.setInt(4,book.getAuthor());
            statement.setInt(5,book.getCategory());
            statement.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Booking> delete(int id) {
        Connection connection = DBRepository.getConnection();
        CallableStatement statement = null;
        List<Booking> books = new ArrayList<>();
        try {
            statement = connection.prepareCall("call deleteBook(?)");
            statement.setInt(1,id);
            statement.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return books;
    }
}
