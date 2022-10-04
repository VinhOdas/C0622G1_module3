package com.vinhodas.repository;

import com.vinhodas.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    List<User> findByCountry(String country);

    List<User> sortByName();

    User getUserById(int id);

    boolean insertUserStore(User user) throws SQLException;
}
