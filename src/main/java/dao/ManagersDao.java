package dao;
import model.ManagersEntity;

import java.util.List;

public class ManagersDao extends BaseDao{

    public String getName(int id){
        String hql = "SELECT name FROM model.ManagersEntity e WHERE e.id = ?1";
        System.out.println(getSession().createQuery(hql).setInteger(1,id).list());
        return getSession().createQuery(hql).setInteger(1, id).list().get(0).toString();
    }
    public String getPass(Integer id){
        String hql = "SELECT password FROM model.ManagersEntity e WHERE e.id = ?1";
        System.out.println(getSession().createQuery(hql).setInteger(1,id).toString());
        return getSession().createQuery(hql).setInteger(1, id).list().get(0).toString();
    }
    public ManagersEntity login(ManagersEntity manager) {
        String hql = "from model.ManagersEntity where model.ManagersEntity.id= ?1 and model.ManagersEntity.password= ?2";
        List<ManagersEntity> list = getSession().createQuery(hql).setInteger(1, manager.getId()).setString(2, manager.getPassword()).list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }
}