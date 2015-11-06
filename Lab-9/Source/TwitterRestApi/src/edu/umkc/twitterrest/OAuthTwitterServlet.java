package edu.umkc.twitterrest;



import java.util.regex.Matcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.umkc.twitterrest.Handler;
import edu.umkc.twitterrest.Twickery;

import twitter4j.Twitter;
import twitter4j.auth.RequestToken;

public class OAuthTwitterServlet implements Handler<Matcher> {
  public void handle(HttpServletRequest request, HttpServletResponse response, Matcher matcher) throws ServletException {
    Twitter twitter = Twickery.twitter();
    RequestToken requestToken;
    try {
      requestToken = twitter.getOAuthRequestToken("http://twickery.com/twitter/oauth");
      request.getSession().setAttribute("requestToken", requestToken);
      response.sendRedirect(requestToken.getAuthenticationURL());
    } catch (Exception e) {
      throw new ServletException(e);
    }
  }
}
/*
import java.awt.Desktop;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.json.java.JSON;
import com.ibm.json.java.JSONObject;

import twitter4j.DirectMessage;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;


*//**
 * Servlet implementation class UserServlet
 *//*
@WebServlet("/user")
public class OAuthTwitterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public OAuthTwitterServlet() {
		// TODO Auto-generated constructor stub
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		

		MongoClientURI uri = new MongoClientURI("mongodb://admin:password@ds037824.mongolab.com:37824/aseproject");
		MongoClient client = new MongoClient(uri);

		DB db = client.getDB(uri.getDatabase());
		DBCollection users = db.getCollection("users");
		BasicDBObject query = new BasicDBObject();
		query.put("name", request.getParameter("name"));
		query.put("password", request.getParameter("password"));
		DBCursor docs = users.find();
		String args[]={"nihardnp","hooooo"};
		 if (args.length < 2) {
	            System.out.println("Usage: java twitter4j.examples.directmessage.SendDirectMessage [recipient screen name] [message]");
	            System.exit(-1);
	        }
	        Twitter twitter = new TwitterFactory().getInstance();
	        try {
	            DirectMessage message = twitter.sendDirectMessage(args[0], args[1]);
	            System.out.println("Direct message successfully sent to " + message.getRecipientScreenName());
	            System.exit(0);
	        } catch (TwitterException te) {
	            te.printStackTrace();
	            System.out.println("Failed to send a direct message: " + te.getMessage());
	            System.exit(-1);
	        }		
		response.getWriter().write("Hello");
		
		JSONObject obj=new JSONObject();
		obj.put("message", "Hello World");
		response.getWriter().write(obj.toString());
		
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "GET");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type");
		response.setHeader("Access-Control-Max-Age", "86400");
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		StringBuilder buffer = new StringBuilder();
		BufferedReader reader = request.getReader();
		String line;
		while ((line = reader.readLine()) != null) {
			buffer.append(line);
		}
		String data = buffer.toString();
		System.out.println(data);

		JSONObject params = (JSONObject) JSON.parse(data);
		BasicDBObject user1 = new BasicDBObject(params);
		
		for(Object key : params.keySet().toArray()) {
			user1.put(key.toString(), params.get(key));
		}
		
		System.out.println(user1.toJson());
		
		MongoClientURI uri = new MongoClientURI("mongodb://admin:password@ds037824.mongolab.com:37824/aseproject");
		MongoClient client = new MongoClient(uri);

		DB db = client.getDB(uri.getDatabase());
		DBCollection users = db.getCollection("users");
		WriteResult result = users.insert(user1);

		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "POST");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type");
		response.setHeader("Access-Control-Max-Age", "86400");

		response.getWriter().write("hi");
	}
	
	@Override
	protected void doOptions(HttpServletRequest arg0, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doOptions(arg0, response);

		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "GET, POST, DELETE, HEAD, OPTIONS");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type");
		response.setHeader("Access-Control-Max-Age", "86400");
	}

}
*/