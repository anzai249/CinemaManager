package service;

import dao.TypesDao;
import model.TypesEntity;

import java.util.List;

public class TypesService {
    private TypesDao typesDao;

    public TypesDao getTypesDao() {
        return typesDao;
    }

    public List<TypesEntity> getAll(){
        return typesDao.getAll();
    }

    public void setTypesDao(TypesDao typesDao) {
        this.typesDao = typesDao;
    }
}
