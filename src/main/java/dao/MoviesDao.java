package dao;

import dao.BaseDao.*;
import model.MoviesEntity;

import java.util.List;

public class MoviesDao extends dao.BaseDao{


    public void delete(Integer id){
        String hql = "DELETE FROM model.MoviesEntity e WHERE e.id = ?1";
        getSession().createQuery(hql).setInteger(1,id).executeUpdate();
    }
    public List<model.MoviesEntity> getAll(){
        String hql = "FROM model.MoviesEntity";
        return getSession().createQuery(hql).list();
    }
    public void saveOrUpdate(MoviesEntity movie){
        getSession().saveOrUpdate(movie);
    }

    public MoviesEntity get(Integer id){
        return (MoviesEntity) getSession().get(MoviesEntity.class,id);
    }
}
