package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.RequestAware;
import service.MoviesService;
import service.TypesService;

import java.util.Map;

public class MoviesAction extends ActionSupport implements RequestAware {
    private MoviesService moviesService;
    private TypesService typesService;
    private Map<String,Object> request;
    public void setMoviesService(MoviesService moviesService) {
        this.moviesService = moviesService;
    }

    public void setTypesService(TypesService typesService) {
        this.typesService = typesService;
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
    public String input(){
        request.put("types",typesService.getAll());
        return INPUT;
    }

    public void setRequest(Map<String, Object> arg0) {
        this.request = arg0;
    }
}
