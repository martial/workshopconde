import com.temboo.core.*;
import com.temboo.Library.Instagram.*;

import toxi.color.*;
import toxi.math.*;
import java.util.Date;
import java.util.Iterator;
import java.util.Collections;

ImageHelper imgHelper;
// Create a session using your Temboo account application details
TembooSession session = new TembooSession("martial", "testApp", "aaa24064183e48a39644703358013ca4");

void setup() {
  
  size(1000,800);
  
  imgHelper = new ImageHelper();
  // Run the SearchMedia Choreo function
  runSearchMediaChoreo();
}

void runSearchMediaChoreo() {
  // Create the Choreo object using your Temboo session
  SearchMedia searchMediaChoreo = new SearchMedia(session);

  // Set credential
  searchMediaChoreo.setCredential("InstagramclientID");

  // Set inputs
  searchMediaChoreo.setLatitude("35.6895000");
  searchMediaChoreo.setLongitude("139.6917100");

  // Run the Choreo and store the results
  SearchMediaResultSet searchMediaResults = searchMediaChoreo.run();
  
  // Print results
  println(searchMediaResults.getResponse());
  
  JSONObject json     = parseJSONObject(searchMediaResults.getResponse());
  JSONArray data = json.getJSONArray("data");
  
  for(int i=0; i<data.size(); i++ ) {
    JSONObject media = data.getJSONObject(i);
    
    String url = media.getJSONObject("images").getJSONObject("standard_resolution").getString("url");
    //println(media.getJSONObject("images").getJSONObject("standard_resolution").getString("url"));
    PImage image;
    image = loadImage(url);
    ArrayList palette = imgHelper.getPalette(image);
    
    
    image(image, i * image.width /8 ,0,image.width /8, image.height/8);
    for(int j=0; j<palette.size(); j++ ) {
        TColor tc = (TColor)  palette.get(j);
        float[] rgba = new float[4];
        tc.toRGBAArray(rgba);
      
        //println(rgba[0] * 255);
        
        fill(rgba[0] * 255, rgba[1] * 255, rgba[2] * 255);
        rect((i * image.width /8) + (j*10), image.height/8, 10, 10);
      
    }
    
    
    
  }
  
}