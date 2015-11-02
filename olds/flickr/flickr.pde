import com.temboo.core.*;
import com.temboo.Library.Flickr.Photos.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("martial", "testApp", "aaa24064183e48a39644703358013ca4");

void setup() {
  // Run the SearchPhotos Choreo function
  runSearchPhotosChoreo();
}

void runSearchPhotosChoreo() {
  // Create the Choreo object using your Temboo session
  SearchPhotos searchPhotosChoreo = new SearchPhotos(session);

  // Set credential
  searchPhotosChoreo.setCredential("flickr");

  // Set inputs
  searchPhotosChoreo.setText("condé");
  searchPhotosChoreo.setRadius("10");
  searchPhotosChoreo.setExtras("geo, url_q, url_n");
  searchPhotosChoreo.setLatitude("45.75");
  searchPhotosChoreo.setAccuracy("1");
  searchPhotosChoreo.setLongitude("4.85");
  searchPhotosChoreo.setContentType("7");
  searchPhotosChoreo.setPerPage("250");


  // Run the Choreo and store the results
  SearchPhotosResultSet searchPhotosResults = searchPhotosChoreo.run();
  
  JSONObject json     = parseJSONObject(searchPhotosResults.getResponse()).getJSONObject("photos");
  JSONArray data = json.getJSONArray("photo");
  
  for(int i=0; i<data.size(); i++ ) {
    
    JSONObject photo = data.getJSONObject(i);
    String url   = photo.getString("url_n");
    float latitude   = photo.getFloat("latitude");
    float longitude   = photo.getFloat("longitude");
    
    println(url);
    
   
    
  }
  
  // Print results
  //println(searchPhotosResults.getResponse());

}