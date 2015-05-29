package Main;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import spark.Request;
import spark.Response;
import spark.Route;
import static spark.Spark.get;
import static spark.Spark.post;
import spark.template.freemarker.FreeMarkerRoute;
import spark.ModelAndView;
import spark.ModelAndView;
import spark.Request;
import spark.Response;
import spark.Spark;
import spark.Spark;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        Spark.staticFileLocation("/public");
        
    	final ArrayList<User>users = new ArrayList<>();

        get(new FreeMarkerRoute("/") {
            @Override
            public ModelAndView handle(Request request, Response response) {
            	users.add(new User("Maria","Socorro"));
            	users.add(new User("Elena","Garcia"));
            	users.add(new User("Miguel","Gordillo"));
                Map<String, Object> data = new HashMap<>();
                data.put("users",users); 
                
            	return modelAndView(data, "userList.ftl");
            }
        });
        
        
           get(new FreeMarkerRoute("/new") {
            @Override
            public ModelAndView handle(Request request, Response response) {       
            	return modelAndView(null, "new.ftl");
            }
        });
        
        
        
    }
}
