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

    public ManagersEntity getName(int id) {
        ManagersEntity managersEntity = managersDao.getName(id);
        return managersEntity;
    }
}