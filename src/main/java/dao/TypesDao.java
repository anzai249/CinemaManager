package dao;

import model.TypesEntity;

import java.util.List;

public class TypesDao extends dao.BaseDao{

    public List<TypesEntity> getAll(){
        String hql = "FROM model.TypesEntity";
        return getSession().createQuery(hql).list();
    }
}
