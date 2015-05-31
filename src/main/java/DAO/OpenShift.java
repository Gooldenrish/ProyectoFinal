package DAO;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import java.util.Arrays;
 
import static spark.Spark.setIpAddress;
import static spark.Spark.setPort;
//import static spark.SparkBase.staticFileLocation;
 
public class OpenShift {
  /* private static final String IP_ADDRESS = System.getenv("OPENSHIFT_DIY_IP") != null ? System.getenv("OPENSHIFT_DIY_IP") : "localhost";
    private static final int PORT = System.getenv("OPENSHIFT_DIY_PORT") != null ? Integer.parseInt(System.getenv("OPENSHIFT_DIY_PORT")) : 4567;
 
    public static init() throws Exception {
        setIpAddress(IP_ADDRESS);
        setPort(PORT);
        staticFileLocation("/public");
    }
 
    public static DB mongo() throws Exception {
        String host = System.getenv("OPENSHIFT_MONGODB_DB_HOST");
        if (host == null) {
            MongoClient mongoClient = new MongoClient("localhost");
            return mongoClient.getDatabase("BD_app");
        }
        int port = Integer.parseInt(System.getenv("OPENSHIFT_MONGODB_DB_PORT"));
        String dbname = System.getenv("OPENSHIFT_APP_NAME");
        String username = System.getenv("OPENSHIFT_MONGODB_DB_USERNAME");
        String password = System.getenv("OPENSHIFT_MONGODB_DB_PASSWORD");        
        MongoCredential credential = MongoCredential.createCredential(username, "admin", password.toCharArray());
        MongoClient mongoClient = new MongoClient(new ServerAddress(host, port), Arrays.asList(credential));
        mongoClient.setWriteConcern(WriteConcern.SAFE);
        Database db = mongoClient.getDatabase("BD_app");        
        return db;
    }*/
}