import com.temboo.core.*;
import com.temboo.Library.Instagram.*;
import java.util.Date;
import java.util.Iterator;
import java.util.Collections;

PFont maTypo;
PImage image;
ArrayList<String> tagsUsed;
ArrayList<String> currentTags;
ArrayList<TagObject> tags;
String nextTag;

// timer
int time;
int wait = 8000;
Boolean tick = false;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("agathebrgr", "myFirstApp", "cb612c26b1dd4f09b52a4e02bbed5628");

void setup() {

  size(1200, 800);

  tagsUsed = new ArrayList<String>();
  tags = new ArrayList<TagObject>();
  currentTags = new ArrayList<String>();

  maTypo = loadFont("ModeNine-48.vlw");

  // Run the SearchMedia Choreo function

  String tag = "sunshine";
  tagsUsed.add(tag);
  runSearchMediaChoreo(tag);
}

void draw () {
  // toutes les 10 secondes il se passe ca !
  if (millis() - time >= wait) {
    tick = !tick;//if it is, do something
    time = millis();//also update the stored time
    runSearchMediaChoreo(nextTag);  

    println("Next tag = " + nextTag);
  }
  background(255);

  image.resize(0, 800);
  // exercice 1 – afficher l'image sur toute la fenetre
  // image(image, x,y,width, height);
  if (image.width > 0 )
    image(image, 0, 0);

  fill(0, 0, 255);
  noStroke ();
  rect(0, 0, 800, 20);
  rect(0, 0, 20, 800);
  rect(0, 780, 800, 20);
  rect(780, 0, 20, 800);

  // on affiche les tags
  textSize(48);
  textFont(maTypo, 12);


  for (int i=0; i<tags.size(); i++ ) {
    // draw text 
    text(tags.get(i).text + " " +tags.get(i).count, 30, i*48);
    //println(i + " - " + tags.get(i).text + "," + tags.get(i).count);
  }
  
    for (int i=0; i<currentTags.size(); i++ ) {
    // draw text 
    text(currentTags.get(i), 600, i*48);
    //println(i + " - " + tags.get(i).text + "," + tags.get(i).count);
  }
}

void runSearchMediaChoreo(String tag) {
  // Create the Choreo object using your Temboo session
  // SearchMedia searchMediaChoreo = new SearchMedia(session);

  RecentlyTaggedMedia recentlyTaggedMediaChoreo = new RecentlyTaggedMedia(session);

  // Set credential
  recentlyTaggedMediaChoreo.setCredential("InstagramAccount");

  // Set inputs
  recentlyTaggedMediaChoreo.setTagName(tag);

  // Run the Choreo and store the results
  RecentlyTaggedMediaResultSet searchMediaResults = recentlyTaggedMediaChoreo.run();

  // Print results
  //println(searchMediaResults.getResponse());

  if (searchMediaResults != null ) {

    JSONObject   json     = parseJSONObject(searchMediaResults.getResponse());
    JSONArray   data = json.getJSONArray("data");

    // je prends la premiere photo qui a plus de 1 hastag
    JSONArray   tagLists = new JSONArray();
    ;
    JSONObject   media = new JSONObject();
    
    currentTags.clear();
    for (int i=0; i< data.size(); i++ ) {
      media = data.getJSONObject(i);
      tagLists = media.getJSONArray("tags");

      for (int j=0; j<tagLists.size();j++) {
             currentTags.add(tagLists.getString(j));
 
      }
      
      if (tagLists.size() > 1 )
        break;
    }


    // je les ajoute a mon tableau
    Boolean foundNextTag = false;
    for (int i=0; i<tagLists.size(); i++ ) {
      String t = tagLists.getString(i);
      //println(t);
      addTag(t);

      // find next one

      Boolean bExists = false;

      //println("-----------------------");
      //println("check tag " + tag);
      for (int j=0; j<tagsUsed.size(); j++ ) {
        //println("result tag " + tagsUsed.get(j));

        if (t.equals(tagsUsed.get(j))) {
          bExists = true;
        }
      }

      if (!bExists && !foundNextTag) {
        //println("-----------------------");
        foundNextTag = true;
        nextTag = t;
        tagsUsed.add(t);
      }
    }


    // je veux l'url et afficher l'image

    String url = media.getJSONObject("images").getJSONObject("standard_resolution").getString("url");
    image = loadImage(url);
  }

  // runSearchMediaChoreo(nextTag);
}

void addTag(String tag) {

  Boolean bExists = false;
  for (int i=0; i<tags.size(); i++ ) {
    if (tag.equals(tags.get(i).text)) {
      bExists = true;
      tags.get(i).count = tags.get(i).count + 1;
    }
  }

  if (!bExists) {
    TagObject tagObject = new TagObject();
    tagObject.text = tag;
    tags.add(tagObject);
  }

  Collections.sort(tags);
}