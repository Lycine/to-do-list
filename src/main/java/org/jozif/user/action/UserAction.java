package org.jozif.user.action;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import org.jozif.user.entity.User;
import org.jozif.user.service.UserService;
import org.jozif.user.service.UserServiceImp;
import org.jozif.util.SuperAction;

/**
 * Created by hongyu on 16/12/16.
 */
public class UserAction extends SuperAction implements ModelDriven<User>,Preparable {
    private static final long serialVersionUID = 1L;
    private  User user = new User();

    public String execute() {
        System.out.println("aaa");
        return "success";
    }

//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }

    public String login() {
        System.out.println("login");
        System.out.println(user.toString());
        UserService userService = new UserServiceImp();
        if (userService.userLogin(user)) {
            return "login_success";
        } else {
            return "login_failure";
        }
    }

    public String register() {
        System.out.println("register");
        System.out.println(user.toString());
        UserService userService = new UserServiceImp();
        if (userService.userLogin(user)) {
            return "login_success";
        } else {
            return "login_failure";
        }
    }
    public User getModel() {
        return this.user;
    }

    public void prepare() throws Exception {
        System.out.println("useraction");
    }
}
