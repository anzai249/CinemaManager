package service;

import dao.MoviesDao;
import model.MoviesEntity;

import java.util.List;

public class MoviesService {
    private MoviesDao moviesDao;

    public void setMoviesDao(MoviesDao moviesDao) {
        this.moviesDao = moviesDao;
    }

    public void delete(Integer id) {
        moviesDao.delete(id);
    }
    public void saveOrUpdate(MoviesEntity movie){
        moviesDao.saveOrUpdate(movie);
    }

    public List<model.MoviesEntity> getAll() {
        return moviesDao.getAll();
    }

    public MoviesEntity get(Integer id) {
        return moviesDao.get(id);
    }
}
