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

    public void delete(Integer id){
        String hql = "DELETE FROM model.MoviesEntity e WHERE e.id = ?1";
        getSession().createQuery(hql).setInteger(1,id).executeUpdate();
    }
    public List<model.MoviesEntity> getAll(){
        String hql = "FROM model.MoviesEntity";
        return getSession().createQuery(hql).list();
    }
}
