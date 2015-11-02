void setup() {
 size(630, 891);
  
}

void draw() {
   
  background(255);
  
  int nombreDeTweets = 42;
  int nombreDeTumblr = 32;
  int nombreDeInstagram = 64;
  
  // Definir ou trouver ces variables
  int max = ???
  float longueurLigneMax = ???
  float longueurLignePourTwitter = ???
  
  
  // Je decale tout mon dessin ( point d'origine ) au milieu de la fenetre
  translate(width/2, height/2);
  
  // Mettre les variables au bon endroit !
  
  // ---- On commence avec Twitter
  
  // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
  translate(50,0);
  // je fais une rotation
  rotate(radians(mouseX));
  // je reviens en arriere
  translate(-50,0);
  // je dessine ma ligne
  line(0,0, 100, 0);
  // hop c'est fini !
  popMatrix();
  
}