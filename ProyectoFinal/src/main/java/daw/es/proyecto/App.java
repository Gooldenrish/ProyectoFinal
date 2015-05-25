package daw.es.proyecto;

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
import spark.Spark;

/**
 * Created by Happy Minds! Software URL: http://www.happyminds.es Tutorial: Blog
 * using MongoDB, Spark and FreeMarker
 */
public class App {

   // private Configuration configuration;
    //  private MongoDB database;
    public static void main(String[] args) {
        Spark.staticFileLocation("/public");

        get(new FreeMarkerRoute("/") {
            @Override
            public ModelAndView handle(Request request, Response response) {
                return modelAndView(null, "Libreria.ftl");
            }
        });

    }
}
