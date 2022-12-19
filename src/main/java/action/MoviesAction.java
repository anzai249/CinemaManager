package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import model.MoviesEntity;
import org.apache.struts2.interceptor.RequestAware;
import service.MoviesService;
import service.TypesService;

import java.util.Map;

public class MoviesAction extends ActionSupport implements RequestAware, ModelDriven<MoviesEntity>, Preparable {

    private MoviesService moviesService;
    private TypesService typesService;
    private Map<String, Object> request;

    public void setMoviesService(MoviesService moviesService) {
        this.moviesService = moviesService;
    }

    public void setTypesService(TypesService typesService) {
        this.typesService = typesService;
    }

    public String list() {
        request.put("movies", moviesService.getAll());
        return "list";
    }
    public String customer() {
        request.put("movies", moviesService.getAll());
        return "customer";
    }

    private Integer id;

    public void setId(Integer id) {
        this.id = id;
    }

    public String delete() {
        moviesService.delete(id);
        return SUCCESS;
    }

    public String input() {
        request.put("types", typesService.getAll());
        return INPUT;
    }

    public void prepareInput() {
        if (id == null) {
            model = new MoviesEntity();
        }else{
            model = moviesService.get(id);
        }
    }

    public String save() {
        moviesService.saveOrUpdate(model);
        return SUCCESS;
    }

    public void prepareSave() {
        if (id == null) {
            model = new MoviesEntity();
        }else{
            model = moviesService.get(id);
        }
    }

    public void setRequest(Map<String, Object> arg0) {
        this.request = arg0;
    }

    public MoviesEntity getModel() {
        return model;
    }

    private MoviesEntity model;

    public void prepare() throws Exception {

    }
}
