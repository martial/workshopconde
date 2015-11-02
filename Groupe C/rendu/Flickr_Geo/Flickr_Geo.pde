import com.temboo.core.*;
import com.temboo.Library.Flickr.Photos.*;
import toxi.color.*;
import toxi.math.*;
import java.util.Date;
import java.util.Iterator;
import java.util.Collections;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("mrkiwi", "myFirstApp", "8e3ba759275b4d0ca90cbe08b7edbe1b");

int currentLatitude = 0;
int currentLongitude = 0;

// timer
int time;
int wait = 3000;
Boolean tick = false;
PImage image;

ImageHelper imgHelper;

float r, g, b;
ArrayList colors;
String date = "";

void setup() {
  
  background(0);
  
  colors = new ArrayList();
  
  r = 0;
  g = 0;
  b = 0;


  size(630, 891);
  time = millis();//store the current time

  imgHelper = new ImageHelper();

  // Run the SearchPhotos Choreo function
  runSearchPhotosChoreo(currentLatitude, currentLongitude);
}

void draw() {

  background(r, g, b);

  // toutes les 10 secondes il se passe ca !
  if (millis() - time >= wait) {
    tick = !tick;//if it is, do something
    time = millis();//also update the stored time

    if (currentLatitude+currentLongitude == 180) {
      println("fin");
    } else {
      if (currentLatitude == 90) {
        currentLatitude = -100;
        currentLongitude = currentLongitude + 10;
      } else {
        currentLatitude = currentLatitude + 10;
        println(currentLatitude, currentLongitude);
      }
    }

    runSearchPhotosChoreo(currentLatitude, currentLongitude);
  }

  if (image.width > 0) {
    image(image, 0, 0);
  }

  //
  
  int index = 0;
  for (int y=0; y<18; y++ ) {
    for (int x=0; x<18; x++ ) {
      
      if(colors.size() > index ) {
      
       color c = (color)colors.get(index);  // Define color 'c'
        fill(c);
      rect(x*35, y*50, 35, 50);
      
      }
      
      
      index = index + 1;
    }
  }
}

void runSearchPhotosChoreo(float latitude, float longitude) {
  // Create the Choreo object using your Temboo session
  SearchPhotos searchPhotosChoreo = new SearchPhotos(session);

  // Set credential
  searchPhotosChoreo.setCredential("flickr");

  // Set inputs
  searchPhotosChoreo.setRadius("20");
  searchPhotosChoreo.setExtras("geo, url_q, url_n");
  searchPhotosChoreo.setLatitude(Float.toString(latitude));
  searchPhotosChoreo.setLongitude(Float.toString(longitude));

  // Ici on a les resultats
  SearchPhotosResultSet searchPhotosResults = searchPhotosChoreo.run();


  JSONObject allJson  = parseJSONObject(searchPhotosResults.getResponse());

  if (!allJson.isNull("photos")) {

    JSONObject json     = allJson.getJSONObject("photos");
    JSONArray data = json.getJSONArray("photo");

    if (data.size() > 0 ) {

      JSONObject photo = data.getJSONObject(0);
      String url   = photo.getString("url_q");
      date  = photo.getString("datetaken");
      
      image = loadImage(url);
      ArrayList palette = imgHelper.getPalette(image);

      TColor tc = (TColor)  palette.get(1);
      float[] rgba = new float[4];
      tc.toRGBAArray(rgba);

      r = rgba[0] * 255;
      g = rgba[1] * 255;
      b = rgba[2] * 255;
      
      color c = color(r, g, b);  // Define color 'c'
      
      colors.add(c);
      
      
    }
  }




  // Print results
  println(searchPhotosResults.getResponse());
}