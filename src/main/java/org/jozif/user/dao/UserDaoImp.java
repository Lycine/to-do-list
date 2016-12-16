package org.jozif.user.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.jozif.user.entity.User;
import org.jozif.util.HibernateUtil;

import java.util.List;

/**
 * Created by hongyu on 16/12/17.
 */
public class UserDaoImp implements UserDao {

    public User findUserByEmail(User user) {
        Transaction tx = null;
        String hql = "";
        try {
            Session session = HibernateUtil.getSession();
            tx = session.beginTransaction();
            hql = "from User where email=:email";
            Query query = session.createQuery(hql);
            query.setParameter("email", user.getEmail());
            List<User> list = query.list();
            tx.commit();
            if (list.size() > 0) {
                user = list.get(0);
//                logger.debug("findUserByEmail success!");
                System.out.println("findUserByEmail success!");
            } else {
//                logger.debug("findUserByEmail failure!");
                System.out.println("findUserByEmail failure!");
            }
        } catch (Exception e) {
//            logger.error("findUserByEmail error!");
            e.printStackTrace();
        }
        return user;
    }
}
