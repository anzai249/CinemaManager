package service.impl;

import dao.ManagersDao;
import model.ManagersEntity;
import service.ManagersService;

public class ManagersServiceImpl implements ManagersService {
    private ManagersDao managersDao;

    public ManagersDao getManagersDao() {
        return managersDao;
    }

    public void setManagersDao(ManagersDao managersDao) {
        this.managersDao = managersDao;
    }

    public String getName(int id) {
        return managersDao.getName(id);
    }

    public String getPass(int id) {
        return managersDao.getPass(id);
    }
}