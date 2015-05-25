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
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

 
import java.net.UnknownHostException;
 

public class MongoDB {
 
    private static final String HOST = "localhost";
    private static final int PORT = 27017;
    private static final String DB_NAME = "course";
    private static final String DB_COLLECTION = "hello";
 
    private MongoClient client;
    private DB database;
    private DBCollection collection;
    

    public MongoDB() throws UnknownHostException {
        this.client = new MongoClient(HOST, PORT);
        this.database = client.getDB(DB_NAME);
        this.collection = database.getCollection(DB_COLLECTION);
    }
 
    /**
     * @return Any document
     */
    public DBObject getOneDocument() {
        return collection.findOne();
    }
    
    
    
    

}
 