package service;

import model.ManagersEntity;

public interface ManagersService {

    public String getName(int id);
    public String getPass(int id);
    public ManagersEntity login(ManagersEntity manager);
}