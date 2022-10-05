package com.vinhodas.service.impl;

import com.vinhodas.model.User;
import com.vinhodas.repository.IUserRepository;
import com.vinhodas.repository.impl.UserRepository;
import com.vinhodas.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserSerivce implements IUserService {
    private IUserRepository userRepository = new UserRepository();

    @Override
    public void insertUser(User user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }
    public List<User>findByCountry(String country){
        return userRepository.findByCountry("%" +country + "%");
    }
    public List<User> sortByName(){
        return userRepository.sortByName();
    }

    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public boolean insertUserStore(User user) throws SQLException {
        return userRepository.insertUserStore(user);
    }

}
