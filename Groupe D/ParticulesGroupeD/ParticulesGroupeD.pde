// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2011
// Box2DProcessing example

// Basic example of falling rectangles

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.*;


// A reference to our box2d world
Box2DProcessing box2d;

// A list we'll use to track fixed objects
ArrayList<Boundary> boundaries;
// A list for all of our rectangles
ArrayList<Box> boxes;

TembooSession session = new TembooSession("dmoncada", "myFirstApp", "e33371dead5c487d8f655a14d63343a3");


void setup() {
  size(800, 600);
  smooth();

  // Initialize box2d physics and create the world
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  // We are setting a custom gravity
  box2d.setGravity(0, -10);

  // Create ArrayLists	
  boxes = new ArrayList<Box>();
  boundaries = new ArrayList<Boundary>();

  // Exercice 1 Ajouter les countours 
  boundaries.add(new Boundary(width/2, height, width, 10));
  boundaries.add(new Boundary(0, height/2, 5, height));
  boundaries.add(new Boundary(width, height/2, 5, height));
  
  // exercice 2 Ajouter les countours puissance 4
  boundaries.add(new Boundary(25, height, 5, 800));
  boundaries.add(new Boundary(50, height, 5, 800));
  boundaries.add(new Boundary(75, height, 5, 800));
  boundaries.add(new Boundary(100, height, 5, 800));
  boundaries.add(new Boundary(125, height, 5, 800));
  boundaries.add(new Boundary(150, height, 5, 800));
  boundaries.add(new Boundary(175, height, 5, 800));
  boundaries.add(new Boundary(200, height, 5, 800));
  boundaries.add(new Boundary(225, height, 5, 800));
  boundaries.add(new Boundary(250, height, 5, 800));
  boundaries.add(new Boundary(275, height, 5, 800));
  boundaries.add(new Boundary(300, height, 5, 800));
  boundaries.add(new Boundary(325, height, 5, 800));
  boundaries.add(new Boundary(350, height, 5, 800));
  boundaries.add(new Boundary(375, height, 5, 800));
  boundaries.add(new Boundary(400, height, 5, 800));
  boundaries.add(new Boundary(425, height, 5, 800));
  boundaries.add(new Boundary(450, height, 5, 800));
  boundaries.add(new Boundary(475, height, 5, 800));
  boundaries.add(new Boundary(500, height, 5, 800));
  boundaries.add(new Boundary(525, height, 5, 800));
  boundaries.add(new Boundary(550, height, 5, 800));
  boundaries.add(new Boundary(575, height, 5, 800));
  boundaries.add(new Boundary(600, height, 5, 800));
  boundaries.add(new Boundary(625, height, 5, 800));
  boundaries.add(new Boundary(650, height, 5, 800));
  boundaries.add(new Boundary(675, height, 5, 800));
  boundaries.add(new Boundary(700, height, 5, 800));
  boundaries.add(new Boundary(725, height, 5, 800));
  boundaries.add(new Boundary(750, height, 5, 800));
  boundaries.add(new Boundary(775, height, 5, 800));
  
  runTweetsChoreo();
  
}
void draw() {
  background(255);

  // We must always step through time!
  box2d.step();

  // Ici on crée les particules
  /*
  if (random(7) < 0.2) {
    
    // les parametres sont x, y, radius ( rayon )
    // Exercice 3 : trouver un moyen de faire tomber les particules aleatoirement en x 
    // TIP : regarder la fonction random(); dans la doc !
    
   
    
   float width = random(1600);
    Box p = new Box(width/2, 19, 19, 234, 82, 88);
    boxes.add(p);
    
    boxes.add(new Box(width/2, 19, 19, 124, 137, 185));
    boxes.add(new Box(width/2, 19, 19, 162, 25, 91));
    boxes.add(new Box(width/2, 19, 19, 232, 78, 27));
    boxes.add(new Box(width/2, 19, 19, 149, 193, 30));
    boxes.add(new Box(width/2, 19, 19, 174, 79, 50));
    boxes.add(new Box(width/2, 19, 19, 87, 185, 157));
   
   
  }
  
  */
  

  // Display all the boundaries
  for (Boundary wall: boundaries) {
    wall.display();
  }

  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }

  // Boxes that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }
}


void runTweetsChoreo() {
  // Create the Choreo object using your Temboo session
  Tweets tweetsChoreo = new Tweets(session);

  // Set credential
  tweetsChoreo.setCredential("TwitterAccount");
  tweetsChoreo.setCount("200");

  // Set inputs
  tweetsChoreo.setQuery("#happy");

  // Run the Choreo and store the results
  TweetsResultSet tweetsResults = tweetsChoreo.run();
  
  JSONObject json     = parseJSONObject(tweetsResults.getResponse());
  JSONArray data = json.getJSONArray("statuses");
  
  for(int i=0; i<data.size(); i++ ) {
    JSONObject tweet = data.getJSONObject(i);
    
    String text       = tweet.getString("text");
    String lang       = tweet.getString("lang");
    
    println(lang);
    
    if (lang.equals("fr") ) {
          boxes.add(new Box(40, 19, 19, 255, 0, 0));
    } else if(lang.equals("en") ) {
         boxes.add(new Box(450, 19, 19, 0, 255, 0));

    } else {
        boxes.add(new Box(99999, 19, 19, 0, 0, 0));

    }
    

   
    
  }
    
   
   

}