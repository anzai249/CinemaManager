package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import model.TypesEntity;
import org.apache.struts2.interceptor.RequestAware;
import service.TypesService;

import java.util.Map;

public class TypesAction extends ActionSupport implements RequestAware, ModelDriven<TypesEntity>, Preparable {

    private TypesService typesService;
    private Map<String, Object> request;
    public TypesEntity getModel() {
        return model;
    }

    public void setModel(TypesEntity model) {
        this.model = model;
    }

    private TypesEntity model;

    public void setTypesService(TypesService typesService) {
        this.typesService = typesService;
    }


    public String typeslist() {
        request.put("types", typesService.getAll());
        return "typeslist";
    }

    private Integer id;

    public void setId(Integer id) {
        this.id = id;
    }

    public String delete() {
        typesService.delete(id);
        return SUCCESS;
    }

    public String input() {
        request.put("types", typesService.getAll());
        return INPUT;
    }

    public void prepareInput() {
        if (id == null) {
            model = new TypesEntity();
        }else{
            model = typesService.get(id);
        }
    }

    public String save() {
        typesService.saveOrUpdate(model);
        id = null;
        return SUCCESS;

    }

    public void prepareSave() {
        if (id == null) {
            model = new TypesEntity();
        }else{
            model = typesService.get(id);
        }
    }

    public void setRequest(Map<String, Object> arg0) {
        this.request = arg0;
    }



    public void prepare() throws Exception {

    }
}
