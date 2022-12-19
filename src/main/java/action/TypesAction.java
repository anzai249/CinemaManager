package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import model.NewsEntity;
import org.apache.struts2.interceptor.RequestAware;
import service.NewsService;

import java.util.Map;

public class TypesAction extends ActionSupport implements RequestAware, ModelDriven<NewsEntity>, Preparable {

    private NewsService newsService;
    //private TypesService typesService;
    private Map<String, Object> request;

    public void setNewsService(NewsService newsService) {
        this.newsService = newsService;
    }

//    public void setTypesService(TypesService typesService) {
//        this.typesService = typesService;
//    }

    public String newslist() {
        request.put("news", newsService.getAll());
        return "newslist";
    }
    public String customer() {
        request.put("news", newsService.getAll());
        return "customer";
    }

    private Integer id;

    public void setId(Integer id) {
        this.id = id;
    }

    public String delete() {
        newsService.delete(id);
        return SUCCESS;
    }

//    public String input() {
//        request.put("types", typesService.getAll());
//        return INPUT;
//    }

    public void prepareInput() {
        if (id == null) {
            model = new NewsEntity();
        }else{
            model = newsService.get(id);
        }
    }

    public String save() {
        newsService.saveOrUpdate(model);
        return SUCCESS;
    }

    public void prepareSave() {
        if (id == null) {
            model = new NewsEntity();
        }else{
            model = newsService.get(id);
        }
    }

    public void setRequest(Map<String, Object> arg0) {
        this.request = arg0;
    }

    public NewsEntity getModel() {
        return model;
    }

    private NewsEntity model;

    public void prepare() throws Exception {

    }
}
