package action;

import com.opensymphony.xwork2.ActionSupport;
import model.ManagersEntity;
import service.ManagersService;

import java.util.Locale;

public class TestAction extends ActionSupport {

    private ManagersService managersService;

    public ManagersService getManagersService() {
        return managersService;
    }

    public void setManagersService(ManagersService managersService) {
        this.managersService = managersService;
    }

    public String getName(Integer id) {
        return managersService.getName(id);
    }
    public String login(Integer id, String pass){
        if(
                pass == null ? managersService.getName(id) == null : pass.equals(managersService.getName(id))
        ){
            return "LOGIN-SUCCESS";
        }else{
            return "LOGIN-FAILED";
        }


    }
}
