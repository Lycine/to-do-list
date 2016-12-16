package org.jozif.user.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.jozif.user.entity.User;
import org.jozif.util.HibernateUtil;
import org.junit.Test;

import java.util.List;

/**
 * Created by hongyu on 16/12/17.
 */
public class UserDaoImp {
    @Test
    public void findUserByEmail() {
        User user = new User();
        user.setEmail("a1@a.com");
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
                System.out.println(user.toString());
            } else {
//                logger.debug("findUserByEmail failure!");
                System.out.println("findUserByEmail failure!");
            }
        } catch (Exception e) {
//            logger.error("findUserByEmail error!");
            e.printStackTrace();
        }
    }
}
