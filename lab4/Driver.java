import java.sql.*;
import java.io.*;
import java.util.*;

/**
 * A sample class that connects to PostgreSQL and runs a simple query.
 *
 * Note: Your database name is your login name, so for login jsmith,
 * you would have
 *    getConnection("jdbc:postgresql://cmps182-db.ic.ucsc.edu/jsmith", 
 *    "jsmith" , "password");
 */
public class Driver
{
    public static void main(String[] args) throws
        ClassNotFoundException, FileNotFoundException, IOException,
        SQLException {
       Connection connection;

   	Class.forName("org.postgresql.Driver");  //Registering the driver
    connection = DriverManager.getConnection(
            "jdbc:postgresql://cmps182-db.lt.ucsc.edu/akester",
            "akester", "mountain70come19general04competition");  //Making the Connection 

    StoreApplication app = new StoreApplication();

    List<String> phoneNumbers =
        app.getCustomerPhoneFromFirstLastName(connection, "Mary", "Smith");
            System.out.println(phoneNumbers);
            
    List<String> phoneNumbers1 =
        app.getCustomerPhoneFromFirstLastName(connection, "John", "Smith");
            System.out.println(phoneNumbers1);
            
    List<String> phoneNumbers2 =
        app.getCustomerPhoneFromFirstLastName(connection, "Jennifer", "Davis");
            System.out.println(phoneNumbers2);
    
    List<String> filmTitles =
        app.getFilmTitlesBasedOnLengthRange(connection, 49, 50);
            System.out.println(filmTitles);
            
    List<String> filmTitles1 =
        app.getFilmTitlesBasedOnLengthRange(connection, 10, 20);
            System.out.println(filmTitles1);
    
    int count = app.countCustomersInDistrict(connection, "Buenos Aires",true);
            System.out.println(count);
    
    int count2 = app.countCustomersInDistrict(connection, "Buenos Aires",false);
            System.out.println(count2);
            
    app.insertFilmIntoInventory(connection, "Sequel to the Prequel",
            "Memorable", 98, "PG-13");

    connection.close(); //Closing Connection
    }
}
