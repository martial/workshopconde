import de.fhpotsdam.unfolding.mapdisplay.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.tiles.*;
import de.fhpotsdam.unfolding.interactions.*;
import de.fhpotsdam.unfolding.ui.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.core.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.texture.*;
import de.fhpotsdam.unfolding.events.*;
import de.fhpotsdam.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import processing.opengl.*;
import java.util.List;
import toxi.color.*;
import toxi.math.*;
import com.temboo.core.*;
import com.temboo.Library.Flickr.Photos.*;
import java.util.Date;
import java.util.Iterator;
import java.util.Collections;


UnfoldingMap map;
SimplePointMarker berlinMarker;

ArrayList<Location> locations;
ArrayList<SimplePointMarker> markers;

ArrayList colors;
ImageHelper imgHelper;

TembooSession session = new TembooSession("joanal", "myFirstApp", "be2005d3019d499092e13c9ebdb87943");

// timer
int time;
int wait = 3000;
Boolean tick = false;
PImage image;


int currentIndex = 0;

void setup() {
  
  background(0);
  
  size(1000, 1000);
  smooth();

  colors = new ArrayList();



  time = millis();//store the current time
  imgHelper = new ImageHelper();
  // Run the SearchPhotos Choreo function
  //runSearchPhotosChoreo(currentLatitude, currentLongitude);


  locations = new ArrayList<Location>();
  markers = new ArrayList<SimplePointMarker>();

  // ici c'est le code pour commencer et loader la map

  map = new UnfoldingMap(this);
  //map.setZoomLevel(5);
  map.zoomAndPanTo(5, new Location(45.7f, 3.08f));

  MapUtils.createDefaultEventDispatcher(this, map);

  List<Feature> countries = GeoJSONReader.loadData(this, "countries.geo.json");
  List<Marker> countryMarkers = MapUtils.createSimpleMarkers(countries);
  map.addMarkers(countryMarkers);

  // ici on ajoute chaque coordonnées ( location )

  locations.add(new Location(43.6109200, 3.8772300));// Languedoc - Montpellier
  locations.add(new Location(43.1833300, 3.0000000));// Languedoc - Narbonne
  locations.add(new Location(44.5166700, 3.5000000));// Languedoc - Mende
  locations.add(new Location(44.1333300, 4.0833300));// Languedoc - Alés
  locations.add(new Location(42.6166700, 2.4333300));// Languedoc - Prades
  locations.add(new Location(43.0548700, 2.2217300));// Languedoc - Limoux
  locations.add(new Location(43.2166700, 2.3500000));// Languedoc - Carcassonne

  locations.add(new Location(44.4491000, 1.4366300));// Midi Pyrénées - Cahors
  locations.add(new Location(44.0166700, 1.3500000));// Midi Pyrénées - Montauban
  locations.add(new Location(43.9298000, 2.1480000));// Midi Pyrénées - Albi
  locations.add(new Location(44.3525800, 2.5733800));// Midi Pyrénées - Rodez 
  locations.add(new Location(43.6000000, 2.2500000));// Midi Pyrénées - Castres
  locations.add(new Location(43.60426000, 1.4436700));// Midi Pyrénées - Toulouse
  locations.add(new Location(43.6500000, 0.5833300));// Midi Pyrénées - Auch
  locations.add(new Location(43.2333300, 0.0833300));// Midi Pyrénées - Tarbes

  locations.add(new Location(43.9483400, 4.8089200));// PAC - Avignon
  locations.add(new Location(43.5166700, 4.9833300));// PAC - Istres
  locations.add(new Location(43.2969500, 5.3810700));// PAC - Marseille
  locations.add(new Location(44.4491000, 1.4366300));// PAC - Forcalquier
  locations.add(new Location(44.8997800, 6.6420100));// PAC - Briançon
  locations.add(new Location(43.7031300, 7.2660800));// PAC - Nice
  locations.add(new Location(43.5333300, 6.4666700));// PAC - Draguignan

  locations.add(new Location(47.2172500, -1.5533600));// LOIRE - Nantes
  locations.add(new Location(47.2833, -2.2));// LOIRE - Saint nazaire
  locations.add(new Location(47.3667, -1.1667));// LOIRE - Ancenis
  locations.add(new Location(47.2, -1.5667));// LOIRE - Rezé
  locations.add(new Location(47.3333, -2.4333));// LOIRE - Guérande
  locations.add(new Location(47.1167, -2.1));// LOIRE - Pornic
  locations.add(new Location(47, -0.65));// LOIRE - Le croisic

  locations.add(new Location(48.5167, -2.7833));// BRETAGNE - St brieuc
  locations.add(new Location(48.0833, -1.6833));// BRETAGNE - Rennes
  locations.add(new Location(47.6667, -2.75));// BRETAGNE - Vannes
  locations.add(new Location(48, -4.1));// BRETAGNE - Quimper
  locations.add(new Location(48.65, -2.0167));// BRETAGNE - St malo
  locations.add(new Location(48.4, -4.4833));// BRETAGNE - Brest
  locations.add(new Location(48.55, -3.15));// BRETAGNE - Guingamp

  locations.add(new Location(48.65, -2.0167));// BASSE NORMANDIE - Calvados Saint Lo
  locations.add(new Location(48.4333, 0.0833));// BASSE NORMANDIE - Alençon
  locations.add(new Location(49.1811, -0.3712));// BASSE NORMANDIE - Caen

  locations.add(new Location(49.0241, 1.1508));// HAUTE NORMANDIE - Evreux
  locations.add(new Location(49.4938, 0.1077));// HAUTE NORMANDIE - Le havre
  locations.add(new Location(49.9333, 1.0833));// HAUTE NORMANDIE - Dieppe

  locations.add(new Location(48.8566140, 2.3522219));// ILE DE FRANCE - Paris
  locations.add(new Location(48.5421050, 2.6554000));// ILE DE FRANCE - Melun
  locations.add(new Location(48.8014080, 2.1301220));// ILE DE FRANCE - Versailles
  locations.add(new Location(48.6298280, 2.4417820));// ILE DE FRANCE - Évry
  locations.add(new Location(48.8924230, 2.2153310));// ILE DE FRANCE - Nanterre
  locations.add(new Location(48.9086120, 2.4397120));// ILE DE FRANCE - Bobigny
  locations.add(new Location(48.7903670, 2.4555720));// ILE DE FRANCE - Créteil

  locations.add(new Location(49.0509660, 2.1006450));// PICARDIE - Pontoise
  locations.add(new Location(49.5641330, 3.6198900));// PICARDIE - Laon
  locations.add(new Location(49.4295387, 2.0807123));// PICARDIE - Beauvais
  locations.add(new Location(49.8940670, 2.2957530));// PICARDIE - Amiens
  locations.add(new Location(47.9972900, 2.7362910));// PICARDIE - Montargis

  locations.add(new Location(47.0810120, 2.3987820));// CENTRE - Bourges
  locations.add(new Location(48.4438540, 1.4890120));// CENTRE - Chartres
  locations.add(new Location(47.3941440, 0.6848400));// CENTRE - Tours
  locations.add(new Location(46.8114340, 1.6867790));// CENTRE - Châteauroux
  locations.add(new Location(47.5860921, 1.3359475));// CENTRE - Blois

  locations.add(new Location(48.5734053, 7.7521113));// ALSACE - Strasbourg
  locations.add(new Location(48.0793589, 7.3585120));// ALSACE - Colmar 
  locations.add(new Location(48.6057680, 7.6857800));// ALSACE - Oberhausbergen
  locations.add(new Location(47.7508390, 7.3358880));// ALSACE - Mulhouse

  locations.add(new Location(48.6920540, 6.1844170));// LORRAINE - Nancy
  locations.add(new Location(48.1724020, 6.4494030));// LORRAINE - Epinal
  locations.add(new Location(49.1193089, 6.1757156));// LORRAINE - Metz
  locations.add(new Location(48.2815210, 6.9517460));// LORRAINE - St Dié

  locations.add(new Location(47.3220470, 5.0414800));// BOURGOGNE - Dijon
  locations.add(new Location(46.9908960, 3.1628450));// BOURGOGNE - Nevers
  locations.add(new Location(47.7982020, 3.5737810));// BOURGOGNE - Auxerre
  locations.add(new Location(46.3068839, 4.8287310));// BOURGOGNE - Mâcon

  locations.add(new Location(47.2378290, 6.0240539));// FRANCHE-COMTE - Besançon
  locations.add(new Location(47.6396740, 6.8638490));// FRANCHE-COMTE - Belfort
  locations.add(new Location(47.6197880, 6.1542800));// FRANCHE-COMTE - Vesoul
  locations.add(new Location(47.5103560, 6.7984660));// FRANCHE-COMTE - Montbéliard

  locations.add(new Location(49.2583290, 4.0316960));// CHAMPAGNE ARDENNE - Reims
  locations.add(new Location(45.6778830, 1.6634300));// CHAMPAGNE ARDENNE - Chaumont
  locations.add(new Location(48.2973451, 4.0744009));// CHAMPAGNE ARDENNE - Troyes

  locations.add(new Location(45.8315300, 1.2578000));// LIMOUSIN - Limoges
  locations.add(new Location(45.2667, 1.7667));// LIMOUSIN - Tulle
  locations.add(new Location(45.1833, 1.6667));// LIMOUSIN - Aubazine

  locations.add(new Location(46.1666700, -1.1500000));// POITOU CHARENTE - La rochelle
  locations.add(new Location(46.580224, 0.3333300));// POITOU CHARENTE - Poitier
  locations.add(new Location(45.653, 0.155));// POITOU CHARENTE - Angouleme
  locations.add(new Location(45.7, -0.3333));// POITOU CHARENTE - Cognac
  locations.add(new Location(45.9333300, -0.9833300));// POITOU CHARENTE - Rochefort

  locations.add(new Location(43.3, -0.3667));// AQUITAINE - Pau
  locations.add(new Location(43.716667, -1.05));// AQUITAINE - Dax
  locations.add(new Location(44.65, -1.1667));// AQUITAINE - Arcachon
  locations.add(new Location(44.3945, -1.1672));// AQUITAINE - Biscarosse
  locations.add(new Location(43.481402, -1.514699));// AQUITAINE - Anglet
  locations.add(new Location(43.3887100, -1.6626700));// AQUITAINE - Saint Jean De Luz
  locations.add(new Location(44.8333, -0.5667));// AQUITAINE - Bordeaux
  locations.add(new Location(43.4833, -1.4833));// AQUITAINE - Bayonne
  locations.add(new Location(43.4833, -1.5667));// AQUITAINE - Biarritz
  locations.add(new Location(44.4085400, 0.7041500));// AQUITAINE - villeneuve sur lot
  locations.add(new Location(44.9166700, -0.2333300));// AQUITAINE - Libourne
  locations.add(new Location(45.5333300, 0.6666700));// AQUITAINE - Nontron

  locations.add(new Location(46.85, -0.0167));// CHAMPAGNE - Marne
  locations.add(new Location(48.3, 4.0833));// CHAMPAGNE - Troy
  locations.add(new Location(47.25, 3.65));// CHAMPAGNE - Chaumont

  locations.add(new Location(50.293, 2.7819));// NORD PAS DE CALAIS - Arras
  locations.add(new Location(50.35, 3.5333));// NORD PAS DE CALAIS - Valenciennes
  locations.add(new Location(50.6333, 3.0667));// NORD PAS DE CALAIS -  Lille
  locations.add(new Location(50.9581, 1.8521));// NORD PAS DE CALAIS - Calais

  locations.add(new Location(45.871889, 3.038744));// AUVERGNE - Volvic
  locations.add(new Location(46.1833, 3.1667));// AUVERGNE - Charroux
  locations.add(new Location(45.4167, 3.7333));// AUVERGNE - Arlanc
  locations.add(new Location(45.8833, 3.1));// AUVERGNE - Mozac
  locations.add(new Location(45.533494, 2.69142));// AUVERGNE - La tour d’auvergne
  locations.add(new Location(46.27754, 4.434329));// AUVERGNE - Aigueperse
  locations.add(new Location(45.589082, 2.992862));// AUVERGNE - Saint Nectaire
  locations.add(new Location(45.732446, 3.103759));// AUVERGNE - Romagnat 

  locations.add(new Location(45.9167, 6.15));// RHONE ALPE - Annecy Le Vieux 
  locations.add(new Location(45.7333, 4.9167));// RHONE ALPE - Bron 
  locations.add(new Location(45.448034, 6.980226));// RHONE ALPE - Val D’isère 
  locations.add(new Location(45.5167, 4.8667));// RHONE ALPE - Vienne 
  locations.add(new Location(44.5583800, 4.7509400));// RHONE ALPE - Montélimar 
  locations.add(new Location(46.0333, 4.0667));// RHONE ALPE - Roanne 
  locations.add(new Location(45.1333, 5.7167));// RHONE ALPE - Echirolles
  locations.add(new Location(45.6745, 6.3906));// RHONE ALPE - Albertville













  for ( int i=0; i<locations.size (); i++ ) {

    SimplePointMarker marker = new SimplePointMarker(locations.get(i));
    markers.add(marker);
    map.addMarker(marker);
  }


  /*
  
   Location berlinLocation = new Location(52.5, 13.4);
   Location dublinLocation = new Location(53.35, -6.26);
   
   // Create point markers for locations
   berlinMarker = new SimplePointMarker(berlinLocation);
   SimplePointMarker dublinMarker = new SimplePointMarker(dublinLocation);
   berlinMarker.setColor(color(255, 0, 0, 100));
   berlinMarker.setStrokeColor(color(255, 0, 0));
   berlinMarker.setStrokeWeight(4);
   // Add markers to the map
   map.addMarkers(berlinMarker, dublinMarker);
   
   */


  Location first = locations.get(0);
  runSearchPhotosChoreo(first.x, first.y);
}

void draw() {
   if (millis() - time >= wait) {
    tick = !tick;//if it is, do something
    time = millis();//also update the stored time
    Location next = locations.get(currentIndex);
    runSearchPhotosChoreo(next.x, next.y);
    
      println("Searching for " + next.x, next.y);

    
   }



  //map.draw();
  
  // float largeurImage = image.width
  // float hauteurImage = image.height

  
  if(image.width > 0) {
  image(image, 0,0);
  
  //image(image, 0,0, largeurImage, hauteurImage);

  
  }

  for ( int i=0; i<markers.size (); i++ ) {


    if (colors.size() > i ) {

      SimplePointMarker marker = markers.get(i);
      ScreenPosition position = marker.getScreenPosition(map);
      color c = (color)(Integer)colors.get(i);  // Define color 'c'

      fill(c);
      rect(position.x, position.y, 6, 6);
    }
  }
}


void runSearchPhotosChoreo(float latitude, float longitude) {
  // Create the Choreo object using your Temboo session
  SearchPhotos searchPhotosChoreo = new SearchPhotos(session);

  // Set credential
  searchPhotosChoreo.setCredential("photofr");

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
      //date  = photo.getString("datetaken");

      image = loadImage(url);
      ArrayList palette = imgHelper.getPalette(image);

      TColor tc = (TColor)  palette.get(1);
      float[] rgba = new float[4];
      tc.toRGBAArray(rgba);

      float r = rgba[0] * 255;
      float g = rgba[1] * 255;
      float b = rgba[2] * 255;

      color c = color(r, g, b);  // Define color 'c'

      colors.add(c);
    } else {

      color c = color(0, 0, 0);  // Define color 'c'
      colors.add(c);
    }
  }

  currentIndex ++;
  
  if(currentIndex > locations.size() -1 ) {
     currentIndex = 0; 
  }


  // Print results
  println(searchPhotosResults.getResponse());
}

