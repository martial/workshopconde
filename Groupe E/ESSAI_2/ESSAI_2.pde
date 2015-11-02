import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("sidfik", "myFirstApp", "841d59983582461b97019d9bf0caa9d6");

void setup() {
  size(630, 891);
  time = millis();//store the current time

  background(0, 0, 0);

  //size(1000, 800);

  // on loade la librairie Tweet
  Tweets tweetsChoreo = new Tweets(session);

  // Set credential
  tweetsChoreo.setCredential("Twiter");
  tweetsChoreo.setCount("20");

  // Set inputs
  tweetsChoreo.setQuery("#hollande");

  // Run the Choreo and store the results
  TweetsResultSet tweetsResults = tweetsChoreo.run();

  JSONObject json     = parseJSONObject(tweetsResults.getResponse());
  JSONArray data = json.getJSONArray("statuses");

  println(data.size());

  int nombreDeResultats = data.size();
  int maxRetweets = 0;
  int maxFavoris = 0;
  int maxFollowers = 0;

  for (int index=0; index < nombreDeResultats; index++ ) {

    JSONObject tweet = data.getJSONObject(index);
    JSONObject user = tweet.getJSONObject("user");

    int numRetweets   = tweet.getInt("retweet_count");
    int numFavorites = tweet.getInt("favorite_count");
    int numFollowers = user.getInt("followers_count");

    println(numFollowers);

    maxRetweets = max(numRetweets, maxRetweets);
    maxFavoris   = max(maxFavoris, numFavorites);
    maxFollowers = max(maxFollowers, numFollowers);
  }

  for (int index=0; index < nombreDeResultats; index++ ) {

    JSONObject tweet = data.getJSONObject(index);
    JSONObject user = tweet.getJSONObject("user");

    int numRetweets   = tweet.getInt("retweet_count");
    //int numFavorites = tweet.getInt("favorite_count");
    int numFollowers = user.getInt("followers_count");

    //int numFollowers = tweet.getInt("followers_count);

    //on a a acces à maxRetweets

    float intervalle = 20;
    float x = index * intervalle;
    float diametre = 10 + numRetweets * (intervalle - 10 ) / maxRetweets;
    
    // a changer avec autre data
    float centredutriangle = ( intervalle - numRetweets ) / 2;
    float faceTriangle = 10 + numRetweets * (intervalle - 10 ) / maxRetweets;

    // calculer le diametre proportionnel comme vu au tableu 
    // TIPS : on doit se servir de la variable maxRetweets
    // TIPS2 : Ca va etre un truc du style " float diametre = maxRetweets * je sais pas quoi / un truc;
    //float diametre = 20;


    // ------------------------------------------------------------------------------------------------------------ CERCLE
    
    pushMatrix();
    translate(150,280);
    fill(255, 0, 0);
    noStroke();
    
   // fill(255);
    //rect(0, 0, nombreDeResultats * intervalle, 20);

    fill(255, 0, 0);
    ellipse(x, intervalle/2, diametre, diametre);
    popMatrix();
    
    
    //triangle(30, 75, 58, 20, 86, 75);

    // ------------------------------------------------------------------------------------------------------------ TRIANGLE
    pushMatrix();
    
    translate(120, 440);
    
    fill(0, 255, 0);
    noStroke();
    pushMatrix();
    translate(intervalle*index, 0);
    pushMatrix();
    translate((intervalle - faceTriangle) / 2, (intervalle - faceTriangle) / 2);
    triangle(faceTriangle/2, 0, 0, faceTriangle, faceTriangle, faceTriangle);
    popMatrix();
    popMatrix();
    popMatrix();

    
    // ------------------------------------------------------------------------------------------------------------ CARRE
    
    pushMatrix();
    
    rotate(radians(90));
    
    float longueur = 5 + (numFollowers * (intervalle-5) / maxFollowers);
    fill(0, 0, 255);
    noStroke();
    rectMode(CENTER);
    
    rect(0, 0, nombreDeResultats * intervalle, 20);

    rect(x, 0, longueur, longueur);
    
    popMatrix();

    // ------------------------------------------------------------------------------------------------------------ HEXA


    /*
fill(255,255,0);
     noStroke();
     pushMatrix();
     translate(30*index, 600);
     scale(numRetweets/5);
     beginShape();
     vertex(35, 10);
     vertex(70, 30);
     vertex(70, 70);
     vertex(35, 90);
     vertex(0, 70);
     vertex(0, 30);
     endShape(CLOSE);
     popMatrix();
     
     */



    // exercice additionel 
    // changer la forme – et la couleur
  }

  // Exercice 2 : faire la meme chose avec les favoris ( vous m'appelez )
}