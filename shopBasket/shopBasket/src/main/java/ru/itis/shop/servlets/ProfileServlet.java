package ru.itis.shop.servlets;

import com.fasterxml.jackson.databind.ObjectMapper;
import ru.itis.shop.models.Basket;
import ru.itis.shop.models.Product;
import ru.itis.shop.services.BasketService;
import ru.itis.shop.services.UsersService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    private List<Product> ids = new ArrayList<>();
    private BasketService basketService;
    private UsersService usersService;
    private ObjectMapper objectMapper = new ObjectMapper();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("jsp/profile.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("auth")) {
                Long id = Long.parseLong(request.getParameter("productId"));
                if(basketService == null) System.out.println("!!!");
                Basket basket = basketService.getBasket(usersService.getUser(cookie.getValue()));
                ids = basketService.addProductToUserBasket(basket, id);
            }
        }

        String json = objectMapper.writeValueAsString(ids);
        response.setContentType("application/json");
        response.getWriter().write(json);

    }
}
