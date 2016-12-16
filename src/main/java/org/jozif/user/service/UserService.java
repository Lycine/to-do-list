package org.jozif.user.service;

import org.jozif.user.entity.User;

/**
 * 用户相关业务逻辑接口
 * Created by hongyu on 16/12/16.
 */
public interface UserService {
    /**
     * 用户登录业务逻辑接口
     * @param user
     * @return
     */
    public boolean userLogin(User user);

    /**
     * 用户注销业务逻辑接口
     * @param user
     * @return
     */
    public boolean userLogout(User user);

    /**
     * 用户注册业务逻辑接口
     * @param user
     * @return
     */
    public boolean userRegist(User user);

    /**
     * 用户修改业务逻辑接口
     * @param user
     * @return
     */
    public boolean userModify(User user);
}
