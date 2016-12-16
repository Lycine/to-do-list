package org.jozif.user.service;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.jozif.user.entity.User;
import org.jozif.util.HibernateUtil;

import java.util.List;
import java.util.logging.Logger;

/**
 * Created by hongyu on 16/12/16.
 */
public class UserServiceImp implements UserService {
    private static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(UserServiceImp.class);

    public boolean userLogin(User user) {
        Transaction tx = null;
        String hql = "";
        boolean flag = false;
        try {
            Session session = HibernateUtil.getSession();
            tx = session.beginTransaction();
            hql = "from User where email=:email and password=:password";
            Query query = session.createQuery(hql);
            query.setParameter("email", user.getEmail());
            query.setParameter("password", user.getPassword());
            List list = query.list();
            tx.commit();
            if (list.size() > 0) {
                flag = true;
//                logger.debug("login success!");
                System.out.println("login success!");
            } else {
//                logger.debug("login failure!");
                System.out.println("login failure!");
            }
        } catch (Exception e) {
//            logger.error("login error!");
            e.printStackTrace();
        } finally {
            if (tx != null) {
                tx = null;
            }
            return flag;
        }
    }

    public boolean userLogout(User user) {
        Transaction tx = null;
        String hql = "";
        boolean flag = false;
        try {
            Session session = HibernateUtil.getSession();
            tx = session.beginTransaction();
            hql = "from User where email=:email and password=:password";
            Query query = session.createQuery(hql);
            query.setParameter("email", user.getEmail());
            query.setParameter("password", user.getPassword());
            List list = query.list();
            tx.commit();
            if (list.size() > 0) {
                flag = true;
//                logger.debug("login success!");
                System.out.println("login success!");
            } else {
//                logger.debug("login failure!");
                System.out.println("login failure!");
            }
        } catch (Exception e) {
//            logger.error("login error!");
            e.printStackTrace();
        } finally {
            if (tx != null) {
                tx = null;
            }
            return flag;
        }
    }

    public boolean userRegist(User user) {
        return false;
    }

    public boolean userModify(User user) {
        return false;
    }
}
