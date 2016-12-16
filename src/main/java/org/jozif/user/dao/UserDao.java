package org.jozif.user.dao;

import org.jozif.user.entity.User;

/**
 * Created by hongyu on 16/12/17.
 */
public interface UserDao {
    public User findUserByEmail(User user);
}
