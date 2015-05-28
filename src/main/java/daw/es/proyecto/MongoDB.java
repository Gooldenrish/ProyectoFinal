/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daw.es.proyecto;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import com.mongodb.*;
import com.mongodb.client.*;
import java.util.ArrayList;
import org.bson.Document;
import org.bson.conversions.Bson;
 
import java.net.UnknownHostException;
import java.util.ArrayList;
 

public class MongoDB {
 
     public static ArrayList<User> listar() {
        MongoClient client = new MongoClient();
        MongoDatabase database = client.getDatabase("hardwell");
        MongoCollection<Document> collection = database.getCollection("tracks");

        ArrayList<User> datos = new ArrayList();

        MongoCursor<Document> cursor = collection.find().iterator();

        while (cursor.hasNext()) {
            datos.add(jsonObject(cursor.next()));
        }
        client.close();
        return datos;
    }
    
   
    

}
 