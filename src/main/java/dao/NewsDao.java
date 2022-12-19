package dao;

import model.NewsEntity;

import java.util.List;

public class NewsDao extends BaseDao{


    public void delete(Integer id){
        String hql = "DELETE FROM model.NewsEntity e WHERE e.id = ?1";
        getSession().createQuery(hql).setInteger(1,id).executeUpdate();
    }
    public List<NewsEntity> getAll(){
        String hql = "FROM model.NewsEntity";
        return getSession().createQuery(hql).list();
    }
    public void saveOrUpdate(NewsEntity movie){
        getSession().saveOrUpdate(movie);
    }

    public NewsEntity get(Integer id){
        return (NewsEntity) getSession().get(NewsEntity.class,id);
    }
}
