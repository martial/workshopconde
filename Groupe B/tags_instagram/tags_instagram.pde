import com.temboo.core.*;
import com.temboo.Library.Instagram.*;
import java.util.Date;
import java.util.Iterator;
import java.util.Collections;

PFont maTypo;
PImage image;
ArrayList<String> tags;
String nextTag;


// Create a session using your Temboo account application details
TembooSession session = new TembooSession("martial", "testApp", "aaa24064183e48a39644703358013ca4");

void setup() {
  
  size(800,800);
  
  tags = new ArrayList<String>();
  
  maTypo = loadFont("ModeNine-48.vlw");
  
  // Run the SearchMedia Choreo function
  runSearchMediaChoreo("cat");
}

void draw () {
  
  background(255);
  
    // exercice 1 – afficher l'image sur toute la fenetre
   // image(image, x,y,width, height);
   if(image.width > 0 )
   image(image, 0,0);
   
   // on affiche les tags
   textSize(48);
   textFont(maTypo, 48);

   for(int i=0; i<tags.size(); i++ ) {
      // draw text 
      text(tags.get(i), 20, i*48);
   }
  
}

void runSearchMediaChoreo(String tag) {
  // Create the Choreo object using your Temboo session
 // SearchMedia searchMediaChoreo = new SearchMedia(session);

 RecentlyTaggedMedia recentlyTaggedMediaChoreo = new RecentlyTaggedMedia(session);

  // Set credential
  recentlyTaggedMediaChoreo.setCredential("InstagramclientID");

  // Set inputs
  recentlyTaggedMediaChoreo.setTagName(tag);

  // Run the Choreo and store the results
  RecentlyTaggedMediaResultSet searchMediaResults = recentlyTaggedMediaChoreo.run();
  
  // Print results
  //println(searchMediaResults.getResponse());
  
  JSONObject   json     = parseJSONObject(searchMediaResults.getResponse());
  JSONArray   data = json.getJSONArray("data");
  
  // je prends la premiere photo
  JSONObject   media = data.getJSONObject(0);
  
  // je prends les tags
  JSONArray   tagLists = media.getJSONArray("tags");
  
  // je les ajoute a mon tableau
    for(int i=0; i<tagLists.size(); i++ ) {
    String t = tagLists.getString(i);
    println(tag);
    tags.add(t);
    }
    
  
  // je veux l'url et afficher l'image
  
   String url = media.getJSONObject("images").getJSONObject("standard_resolution").getString("url");
   image = loadImage(url);
   
   
   nextTag = tagLists.getString(0);
  // runSearchMediaChoreo(nextTag);

}