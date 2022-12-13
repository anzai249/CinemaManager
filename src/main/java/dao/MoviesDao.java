package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class MoviesDao {

    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }
    public Session getSession(){
        return this.sessionFactory.getCurrentSession();
    }
    public List<model.MoviesEntity> getAll(){
        String hql = "FROM model.MoviesEntity";
        System.out.println(getSession().createQuery(hql).list());
        return getSession().createQuery(hql).list();
    }
}
