package service;

import dao.MoviesDao;

import java.util.List;

public class MoviesService {
    private MoviesDao moviesDao;

    public void setMoviesDao(MoviesDao moviesDao) {
        this.moviesDao = moviesDao;
    }

    public void delete(Integer id){
        moviesDao.delete(id);
    }
    public List<model.MoviesEntity> getAll(){
        return moviesDao.getAll();
    }
}
