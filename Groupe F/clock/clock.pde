import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.*;

import java.util.*;
import java.text.*;

TembooSession session = new TembooSession("celosie", "Workshop", "Q5XLyYbsS2s4L0Cp54X9TPApVTjhwXJ5");


int numOfTweets = 0;
int totalRetweets = 0;
int totalFavorites = 0;

// Definir ou trouver ces variables
int maxTweets      = 200;
int maxFavorites   = 2;
int maxRetweets   = 55;

float longueurLigneMax = 300;
float longueurLigneTwitter;
float longueurLigneTumblr;
float longueurLigneInstagram;


// timer
int time;
int wait = 60000;
Boolean tick = false;
PImage image;


void setup() {
  size(630, 891);

  thread("runTweetsChoreo");
  ;
  time = millis();//store the current time
}

void draw() {

  background(255);

  if (millis() - time >= wait) {
    tick = !tick;//if it is, do something
    time = millis();//also update the stored time
    thread("runTweetsChoreo");
    ;
  }




  


  // Je decale tout mon dessin ( point d'origine ) au milieu de la fenetre
  //translate(width/2, height/2);

  // Mettre les variables au bon endroit !




  //Horaire 11h

  //println(((float)minute() / 360 * 60));

  pushMatrix();
  translate(width /2, height / 2);

  // ---- On commence avec Twitter

  // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
  // translate((width/4)/2,(height/6)/2);
  //Je décale mon dessin de la bordure de la fenêtre
  rotate(radians(((float)hour() * 360 / 24)));

  //rotate(radians(mouseX));

  // je reviens en arriere
  //translate(-50,0);
  // je dessine ma ligne
  line(0, 0, 0, -longueurLigneTwitter);
  // je met la couleur
  stroke(#84C8C9);
  // hop c'est fini !
  popMatrix();


  // ---- On continue avec Tumblr

  // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
  //translate((width/4)/2,(height/6)/2);
  //Je décale mon dessin de la bordure de la fenêtre
  rotate(radians(((float)minute() * 360 / 60)));
  // je reviens en arriere
  //translate(-50,0);
  // je dessine ma ligne
  line(0, 0, 0, -longueurLigneTumblr);
  // je met la couleur
  stroke(#FBE056);
  // hop c'est fini !
  popMatrix();

  // ---- On continue avec Instagram

  // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
  // translate((width/4)/2,(height/6)/2);
  //Je décale mon dessin de la bordure de la fenêtre
  rotate(radians(((float)second() * 360 / 60)));
  // je reviens en arriere
  //translate(-50,0);
  // je dessine ma ligne
  line(0, 0, 0, -longueurLigneInstagram);

  // je met la couleur
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  // hop c'est fini !
  popMatrix();

  popMatrix();
}


void runTweetsChoreo() {
  // Create the Choreo object using your Temboo session
  Tweets tweetsChoreo = new Tweets(session);

  // Set credential
  tweetsChoreo.setCredential("TwitterAccount");
  tweetsChoreo.setCount("200");

  // Set inputs
  tweetsChoreo.setQuery("#halloween");

  // Run the Choreo and store the results
  TweetsResultSet tweetsResults = tweetsChoreo.run();



  JSONObject json     = parseJSONObject(tweetsResults.getResponse());
  JSONArray data = json.getJSONArray("statuses");

  numOfTweets = 0;
  totalRetweets = 0;
  totalFavorites = 0;

  for (int i=0; i<data.size (); i++ ) {
    JSONObject tweet = data.getJSONObject(i);

    String date       = tweet.getString("created_at");

    int numRetweets   = tweet.getInt("retweet_count");
    int numFavorites = tweet.getInt("favorite_count");


    try {
      Date d = getTwitterDate(date);
      int minute = d.getMinutes();

      if (minute == minute()-1 ) {

        totalFavorites +=numFavorites;
        totalRetweets += numRetweets;
        numOfTweets ++;
      }

      //  println(d.getMinutes());
    } 
    catch (Exception e ) {
      println("bad news");
    }
  }


   longueurLigneMax = 300;
   longueurLigneTwitter =  (numOfTweets*longueurLigneMax)/maxTweets;
   longueurLigneTumblr = (totalFavorites*longueurLigneMax)/maxFavorites;
   longueurLigneInstagram = (totalRetweets*longueurLigneMax)/maxRetweets;

  
  if(longueurLigneTwitter > longueurLigneMax )
  longueurLigneTwitter = 300;
  
  if(longueurLigneTumblr > longueurLigneMax )
  longueurLigneTumblr = 300;
  
  if(longueurLigneInstagram > longueurLigneMax )
  longueurLigneInstagram = 300;
  
  println("Tw " + numOfTweets +"/"+ 200);
  println("Fav " + totalFavorites +"/"+ maxFavorites);
  println("RT " + totalRetweets +"/"+ maxRetweets);

  maxTweets      = 200;
  maxFavorites   = totalFavorites;
  maxRetweets   = totalRetweets;
}



public static Date getTwitterDate(String date) throws Exception
{
  final String TWITTER = "EEE MMM dd HH:mm:ss Z yyyy";
  SimpleDateFormat sf = new SimpleDateFormat(TWITTER, Locale.ENGLISH);
  sf.setLenient(true);
  return sf.parse(date);
}