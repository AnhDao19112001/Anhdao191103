package controller;

import model.Booking;
import service.IBookingService;
import service.impl.BookingService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookingServlet", value = "/booking")
public class BookingServlet extends HttpServlet {
    private IBookingService iBookingService = new BookingService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
            if (action == null){
                action = "";
            }
            switch (action){
                case "add":
                    showAdd(request, response);
                    break;
                case "delete":
                    showDelete(request, response);
                    break;
                default:
                    listBook(request, response);
                    break;
            }
    }

    private void listBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Booking> list=iBookingService.findAll();
        request.setAttribute("listUser",list);
        request.getRequestDispatcher("list.jsp").forward(request,response);
    }
    private void showDelete(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
