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
        System.out.println(moviesService.getAll());
        return "list";
    }
    private Map<String,Object> request;
    public void setRequest(Map<String, Object> arg0) {
        System.out.println(arg0);
        this.request = arg0;
    }
}
