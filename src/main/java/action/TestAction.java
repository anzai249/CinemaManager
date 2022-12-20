package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import model.ManagersEntity;
import org.apache.struts2.interceptor.RequestAware;
import service.ManagersService;

import java.util.Map;

public class TestAction extends ActionSupport implements RequestAware, ModelDriven<ManagersEntity>, Preparable {

    private ManagersService managersService;
    private Map<String, Object> request;


    public ManagersService getManagersService() {
        return managersService;
    }

    public void setManagersService(ManagersService managersService) {
        this.managersService = managersService;
    }


    private Integer id;

    public void setId(Integer id) {
        this.id = id;
    }

    private String password;

    public void setPassword(String password){
        this.password = password;
    }

    public String getName() {
        return managersService.getName(id);
    }

    private ManagersEntity model;
    public ManagersEntity getModel() {
        return model;
    }

    public String login() {
        if (
                password == null ? managersService.getPass(id) == null : password.equals(managersService.getPass(id))
        ) {
            return "LOGIN-SUCCESS";
        } else {
            return "LOGIN-FAILED";
        }
    }

    public void prepare() throws Exception {

    }

    public void setRequest(Map<String, Object> map) {
    }
}
