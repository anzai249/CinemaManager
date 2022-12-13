package dao;
import model.ManagersEntity;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class ManagersDao extends HibernateDaoSupport {

    public ManagersEntity getName(int id){
        String hql = "from model.ManagersEntity";
        return this.getHibernateTemplate().get(ManagersEntity.class,id);
    }

}