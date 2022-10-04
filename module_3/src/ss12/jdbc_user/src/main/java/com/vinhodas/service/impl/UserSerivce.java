package com.vinhodas.service.impl;

import com.vinhodas.model.User;
import com.vinhodas.repository.IUserDAO;
import com.vinhodas.repository.impl.UserDAO;
import com.vinhodas.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserSerivce implements IUserService {
    private IUserDAO userDAO = new UserDAO();

    @Override
    public void insertUser(User user) throws SQLException {
        userDAO.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userDAO.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userDAO.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userDAO.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userDAO.updateUser(user);
    }
    public List<User>findByCountry(String country){
        return userDAO.findByCountry("%" +country + "%");
    }
    public List<User> sortByName(){
        return userDAO.sortByName();
    }

    @Override
    public User getUserById(int id) {
        return userDAO.getUserById(id);
    }

    @Override
    public boolean insertUserStore(User user) throws SQLException {
        return userDAO.insertUserStore(user);
    }

}
