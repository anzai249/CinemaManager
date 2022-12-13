package service;

import dao.MoviesDao;

import java.util.List;

public class MoviesService {
    private MoviesDao moviesDao;

    public void setMoviesDao(MoviesDao moviesDao) {
        this.moviesDao = moviesDao;
    }

    public List<model.MoviesEntity> getAll(){
        System.out.println(moviesDao.getAll());
        return moviesDao.getAll();
    }
}
