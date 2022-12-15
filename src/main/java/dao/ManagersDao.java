package dao;
import model.ManagersEntity;

public class ManagersDao extends BaseDao{

    public String getName(int id){
        String hql = "FROM model.ManagersEntity.name WHERE model.ManagersEntity.id = ?1";
        System.out.println(getSession().createQuery(hql).setInteger(1,id).toString());
        return getSession().createQuery(hql).setInteger(1,id).toString();
    }
    public String getPass(Integer id){
        String hql = "FROM model.ManagersEntity.password WHERE model.ManagersEntity.id = ?1";
        System.out.println(getSession().createQuery(hql).setInteger(1,id).toString());
        return getSession().createQuery(hql).setInteger(1,id).toString();
    }

}