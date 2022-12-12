package dao;
import model.ManagersEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ManagersDao extends HibernateDaoSupport {

    public ManagersEntity getName(int id){
        return this.getHibernateTemplate().get(ManagersEntity.class,id);
    }

}