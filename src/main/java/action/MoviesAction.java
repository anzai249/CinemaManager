package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.RequestAware;
import service.MoviesService;

import java.util.Map;

public class MoviesAction extends ActionSupport implements RequestAware {
    private MoviesService moviesService;

    public void setMoviesService(MoviesService moviesService) {
        this.moviesService = moviesService;
    }

    public String list(){
        request.put("movies",moviesService.getAll());
        return "list";
    }

    private Integer id;

    public void setId(Integer id) {
        this.id = id;
    }

    public String delete(){
        moviesService.delete(id);
        return SUCCESS;
    }

    private Map<String,Object> request;
    public void setRequest(Map<String, Object> arg0) {
        this.request = arg0;
    }
}
