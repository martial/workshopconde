import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("martial", "testApp", "aaa24064183e48a39644703358013ca4");

void setup() {
  size(630, 891);
  
  // on loade la librairie Tweet
  Tweets tweetsChoreo = new Tweets(session);

  // Set credential
  tweetsChoreo.setCredential("TwitterAccount");
  tweetsChoreo.setCount("200");

  // Set inputs
  tweetsChoreo.setQuery("lyon");

  // Run the Choreo and store the results
  TweetsResultSet tweetsResults = tweetsChoreo.run();
  
  JSONObject json     = parseJSONObject(tweetsResults.getResponse());
  JSONArray data = json.getJSONArray("statuses");
  
  println(data.size());
  
  int nombreDeResultats = data.size();
  int maxRetweets = 0;
  
  for(int index=0; index < nombreDeResultats; index++ ) {
    
    JSONObject tweet = data.getJSONObject(index);
    int numRetweets   = tweet.getInt("retweet_count");
    maxRetweets = numRetweets + maxRetweets;
    
  }
  
  for(int index=0; index < nombreDeResultats; index++ ) {
    
    JSONObject tweet = data.getJSONObject(index);
    int numRetweets   = tweet.getInt("retweet_count");
    //int numFavourites = tweet.getInt("favorite_count");
    
    //on a a acces à maxRetweets
    
    float intervalle = 20;
    float x = index * intervalle;
    
    // calculer le diametre proportionnel comme vu au tableu 
    // TIPS : on doit se servir de la variable maxRetweets
    // TIPS2 : Ca va etre un truc du style " float diametre = maxRetweets * je sais pas quoi / un truc;
    //float diametre = 20;
    
    
    //ellipse(x,0,diametre, diametre);
    
    // exercice additionel 
    // changer la forme – et la couleur 
    
  }
  
  // Exercice 2 : faire la meme chose avec les favoris ( vous m'appelez )
  
}