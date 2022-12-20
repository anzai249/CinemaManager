package dao;

import model.TypesEntity;

import java.util.List;

public class TypesDao extends dao.BaseDao {

    public List<TypesEntity> getAll() {
        String hql = "FROM model.TypesEntity";
        return getSession().createQuery(hql).list();
    }
    public void saveOrUpdate(TypesEntity type){
        getSession().saveOrUpdate(type);
    }

    public TypesEntity get(Integer id){
        return (TypesEntity) getSession().get(TypesEntity.class,id);
    }

    public void delete(Integer id){
        String hql = "DELETE FROM model.TypesEntity e WHERE e.id = ?1";
        getSession().createQuery(hql).setInteger(1,id).executeUpdate();
    }
}
