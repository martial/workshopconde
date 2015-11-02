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


UnfoldingMap map;
SimplePointMarker berlinMarker;

ArrayList<Location> locations;
ArrayList<SimplePointMarker> markers;


void setup() {
  size(800, 600);
  smooth();
  
  locations = new ArrayList<Location>();
  markers = new ArrayList<SimplePointMarker>();

  // ici c'est le code pour commencer et loader la map

  map = new UnfoldingMap(this);
  MapUtils.createDefaultEventDispatcher(this, map);

  List<Feature> countries = GeoJSONReader.loadData(this, "countries.geo.json");
  List<Marker> countryMarkers = MapUtils.createSimpleMarkers(countries);
  map.addMarkers(countryMarkers);
  
  // ici on ajoute chaque coordonnées ( location )
  
  locations.add(new Location(52.5, 13.4));
  locations.add(new Location(53.35, -6.26));
  
  for ( int i=0; i<locations.size(); i++ ) {
     
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
}

void draw() {


  map.draw();
  
    for ( int i=0; i<markers.size(); i++ ) {

      SimplePointMarker marker = markers.get(i);
      ScreenPosition position = marker.getScreenPosition(map);

      fill(126,0,126);
      rect(position.x,position.y, 36, 36);
  
    }
  

}

