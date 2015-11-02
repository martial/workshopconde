import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.*;


TembooSession session = new TembooSession("celosie", "Workshop", "Q5XLyYbsS2s4L0Cp54X9TPApVTjhwXJ5");

Glyph glyph;

ArrayList<Glyph> glyphs;


// timer
int time;
int wait = 10000;
Boolean tick = false;


void setup() {

  
  glyphs = new ArrayList<Glyph>();
  
  size(630, 891);
  thread("runTweetsChoreo");
  
    time = millis();//store the current time

  
}

void draw() {
  background(255, 255, 255);
  
  if (millis() - time >= wait) {
    tick = !tick;//if it is, do something
    time = millis();//also update the stored time
    thread("runTweetsChoreo");
    ;
  }


  
  float xPos = 0;
  float yPos = 0;
  for(int i=0; i<glyphs.size(); i++) {
    
   
    
   pushMatrix();
   translate(xPos, yPos);
   glyphs.get(i).draw();
   popMatrix();
   
   xPos = xPos + 40;
   
   if(xPos > width - 40 ) {
      xPos = 0;
      yPos = yPos + 30;
   }
    
  }
  
  //glyph.draw();

  // je definis ma variable String qui est une chaine de caracteres et je l'appelle monTexte
  //String monTexte = "Ceci est un super mega tweet";

  // je definis une variable int ( nombre entier ) qui va stocker le nombre de caracteres en appelant monTexte.length()
  //int nombreDeCaracteres = monTexte.length();



  // j'imprime dans la console ma variable pour vérifier
  //println(nombreDeCaracteres);



  
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



  for (int i=0; i<data.size (); i++ ) {
    JSONObject tweet = data.getJSONObject(i);


    String text   = tweet.getString("text");
    int tailleTexte = text.length();

    JSONObject entities = tweet.getJSONObject("entities");

    int numOfHastags = entities.getJSONArray("hashtags").size();
    
    
    Glyph glyph = new Glyph(numOfHastags, tailleTexte);
    glyphs.add(glyph);

    println("tailleTexte = " + tailleTexte + " / Num hastags = "+ numOfHastags);
  }
}