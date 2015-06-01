package Main;

import java.util.HashMap;
import java.util.Map;
import spark.Route;
import static spark.Spark.get;
import static spark.Spark.post;
import spark.template.freemarker.FreeMarkerRoute;
import spark.Request;
import spark.Response;
import spark.Spark;
import entidad.Obj_app;

public class App {

    public static void main(String[] args) {
        Spark.staticFileLocation("/public");

        get(new FreeMarkerRoute("/index") {
            @Override
            public Object handle(Request request, Response response) {
                Map<String, Object> data = new HashMap<>();
                data.put("Aplicaciones", DAO.MongoBD.getAllDocuments());
                return modelAndView(data, "datos.ftl");
            }
        });

        get(new FreeMarkerRoute("/") {
            @Override
            public Object handle(Request request, Response response) {
                return modelAndView(null, "apertura.html");
            }
        });

        get(new FreeMarkerRoute("/add") {
            @Override
            public Object handle(Request request, Response response) {
                return modelAndView(null, "crear.ftl");
            }
        });

        post(new Route("/add") {
            @Override
            public Object handle(Request request, Response response) {
                Obj_app add = new Obj_app();
                add.setTitulo((request.queryParams("titulo")));
                add.setPlataforma(request.queryParams("plataforma"));
                add.setIdioma(request.queryParams("idioma"));
                add.setPrecio(Integer.parseInt(request.queryParams("precio")));
                add.setDescripcion(request.queryParams("descripcion"));
                add.setEnlace(request.queryParams("enlace"));
                DAO.MongoBD.crear(add);
                response.redirect("/index");
                return response;
            }
        });
        
           get(new FreeMarkerRoute("/drop/:titulo") {
            @Override
            public Object handle(Request request, Response response) {
            DAO.MongoBD.borrar(request.params("titulo"));
            response.redirect("/index");
            return response;
            }
        });
        
        
    }
}
