package DAO;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import entidad.Obj_app;
import java.util.ArrayList;
import org.bson.Document;

public class MongoBD {

    static private MongoClient client = new MongoClient();
    static private MongoDatabase MongoBD = client.getDatabase("BD_app");
    static private MongoCollection<Document> collection = MongoBD.getCollection("Aplicaciones");

    public static ArrayList getAllDocuments() {
        ArrayList<Obj_app> arrayl = new ArrayList();
        MongoCursor<Document> cursor = collection.find().limit(20).iterator();
        try {
            while (cursor.hasNext()) {
                arrayl.add(App(cursor.next()));
            }
        } finally {
            cursor.close();
            return arrayl;
        }
    }

    private static Obj_app App(Document dat) {
        Obj_app app = new Obj_app();
        app.setTitulo((dat.getString("titulo")));
        app.setPlataforma(dat.getString("plataforma"));
        app.setIdioma(dat.getString("idioma"));
        app.setPrecio(dat.getInteger("precio"));
        app.setDescripcion(dat.getString("descripcion"));
        app.setEnlace(dat.getString("enlace"));
        return app;
    }

    public static void crear(Obj_app dat) {
        DB db = client.getDB("BD_app");
        DBCollection coll = db.getCollection("Aplicaciones");
        BasicDBObject doc = new BasicDBObject("titulo", dat.getTitulo())
                .append("plataforma", dat.getPlataforma())
                .append("idioma", dat.getIdioma())
                .append("precio", dat.getPrecio())
                .append("descripcion", dat.getDescripcion())
                .append("enlace", dat.getEnlace());
        coll.insert(doc);
    }

    public static void borrar(String titulo) {
        collection.deleteOne(new Document("titulo", titulo));
    }

}
