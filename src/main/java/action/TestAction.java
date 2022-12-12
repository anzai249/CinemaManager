package action;

import com.opensymphony.xwork2.ActionSupport;
import model.ManagersEntity;
import service.ManagersService;

public class TestAction extends ActionSupport {

    private ManagersService managersService;

    public ManagersService getManagersService() {
        return managersService;
    }

    public void setManagersService(ManagersService managersService) {
        this.managersService = managersService;
    }

    public String test() {
        ManagersEntity managersEntity = managersService.getName(1);
        System.out.println(managersEntity);
        return "test";
    }

}
