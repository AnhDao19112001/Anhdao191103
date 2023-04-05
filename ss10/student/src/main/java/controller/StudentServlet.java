package controller;

import model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "StudentServlet", value = "/Student")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList = new ArrayList<>();
        studentList.add(new Student(1,"Phan Tá Anh Đào",0,8.0));
        studentList.add(new Student(2,"Văn Thị Bích Anh",1,9.0));
        studentList.add(new Student(3,"Pen",0,8.0));
        studentList.add(new Student(4,"Sawada",0,8.0));
        request.setAttribute("studentList",studentList);
        if (studentList.size()==0){
            request.setAttribute("massage","Danh sách rỗng!");
        }
        request.getRequestDispatcher("list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
