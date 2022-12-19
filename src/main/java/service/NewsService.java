package service;

import dao.NewsDao;
import model.NewsEntity;

import java.util.List;

public class NewsService {
    private NewsDao newsDao;

    public void setNewsDao(NewsDao newsDao) {
        this.newsDao = newsDao;
    }

    public void delete(Integer id) {
        newsDao.delete(id);
    }
    public void saveOrUpdate(NewsEntity news){
        newsDao.saveOrUpdate(news);
    }

    public List<NewsEntity> getAll() {
        return newsDao.getAll();
    }

    public NewsEntity get(Integer id) {
        return newsDao.get(id);
    }

}
