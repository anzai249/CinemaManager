package service;

import dao.NewsDao;
import dao.TypesDao;
import model.NewsEntity;
import model.TypesEntity;

import java.util.List;

public class TypesService {
    private TypesDao typesDao;

    public TypesDao getTypesDao() {
        return typesDao;
    }

    public List<TypesEntity> getAll() {
        return typesDao.getAll();
    }

    public void setTypesDao(TypesDao typesDao) {
        this.typesDao = typesDao;
    }

    public void delete(Integer id) {
        typesDao.delete(id);
    }
    public void saveOrUpdate(TypesEntity news){
        typesDao.saveOrUpdate(news);
    }
    public TypesEntity get(Integer id) {
        return typesDao.get(id);
    }
}
