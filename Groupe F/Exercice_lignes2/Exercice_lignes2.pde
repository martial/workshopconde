void setup() {
 size(630, 891);
  
}

void draw() {
   
  background(255);
  
  int nombreDeTweets = 42;
  int nombreDeTumblr = 32;
  int nombreDeInstagram = 64;
  
  // Definir ou trouver ces variables
  int max = 138;
  float longueurLigneMax = 300;
  float longueurLigneTwitter = (nombreDeTweets*longueurLigneMax)/max;
  float longueurLigneTumblr = (nombreDeTumblr*longueurLigneMax)/max;
  float longueurLigneInstagram = (nombreDeInstagram*longueurLigneMax)/max;

  
  // Je decale tout mon dessin ( point d'origine ) au milieu de la fenetre
  //translate(width/2, height/2);
  
  // Mettre les variables au bon endroit !
  
  
  
  
  //Horaire 11h
  
  pushMatrix();
  translate(0,0);
  
  // ---- On commence avec Twitter
  
  // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
  translate((width/4)/2,(height/6)/2);
  //Je décale mon dessin de la bordure de la fenêtre
  rotate(radians(70));
  // je reviens en arriere
  translate(-50,0);
  // je dessine ma ligne
  line(0,0,longueurLigneTwitter, 0);
  // je met la couleur
  stroke(#84C8C9);
  // hop c'est fini !
  popMatrix();
  

   // ---- On continue avec Tumblr
 
   // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
 translate((width/4)/2,(height/6)/2);
 //Je décale mon dessin de la bordure de la fenêtre
  rotate(radians(80));
  // je reviens en arriere
  translate(-50,0);
  // je dessine ma ligne
  line(0,0,longueurLigneTumblr, 0);
  // je met la couleur
  stroke(#FBE056);
  // hop c'est fini !
  popMatrix();
  
   // ---- On continue avec Instagram
 
   // c'est parti je vais commencer a decaler / transformer des choses ( pour revenir au point de départ après )
  pushMatrix();
  // je vais definir le point d'orgine de la rotation ( soit la moitié de la longeur de ma ligne )
  translate((width/4)/2,(height/6)/2);
  //Je décale mon dessin de la bordure de la fenêtre
  rotate(radians(90));
  // je reviens en arriere
  translate(-50,0);
  // je dessine ma ligne
  line(0,0,longueurLigneInstagram, 0);
  // je met la couleur
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  // hop c'est fini !
  popMatrix();
  
    popMatrix();
  
  
  
  //Horaire 12h
  
  pushMatrix();
  translate(157.5,0);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(90));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(110));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(100));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    //Horaire 13h
  
  pushMatrix();
  translate(315,0);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(130));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(110));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(120));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    
    //Horaire 14h
  
  pushMatrix();
  translate(472,0);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(140));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(150));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(130));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
   
 
 
   //Horaire 15h
  
  pushMatrix();
  translate(0,148.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(160));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(170));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(150));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
  //Horaire 16h
  
  pushMatrix();
  translate(157.5,148.5);
  
  // ---- On commence avec Twitter
    pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(170));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(190));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(180));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    //Horaire 17h
  
  pushMatrix();
  translate(315,148.5);
  
  // ---- On commence avec Twitter
    pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(190));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(210));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(200));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    
    //Horaire 18h
  
  pushMatrix();
  translate(472,148.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(220));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(210));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(230));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
 
 
 
  
   //Horaire 19h
  
  pushMatrix();
  translate(0,297);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(250));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(240));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(230));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
  //Horaire 20h
  
  pushMatrix();
  translate(157.5,297);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(250));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(260));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(270));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    //Horaire 21h
  
  pushMatrix();
  translate(315,297);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(290));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(270));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(280));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    
    //Horaire 22h
  
  pushMatrix();
  translate(472,297);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(300));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(290));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(310));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    
        //Horaire 23h
  
  pushMatrix();
  translate(0,445.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(310));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(330));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(320));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
 
 
 
  
   //Horaire 00h
  
  pushMatrix();
  translate(157.5,445.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(340));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(330));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
 
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(350));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
  //Horaire 01h
  
  pushMatrix();
  translate(315,445.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(350));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(370));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(360));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    //Horaire 02h
  
  pushMatrix();
  translate(472.5,445.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(370));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  

   // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(380));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(390));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
    
    
    //Horaire 03h
  
  pushMatrix();
  translate(0,594);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(400));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
     // ---- On continue avec Tumblr
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(390));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(410));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
  
   //Horaire 04h
  
  pushMatrix();
  translate(157.5,594);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(420));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
     // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(410));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(400));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
    
    
  
     //Horaire 05h
  
  pushMatrix();
  translate(315,594);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(440));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
     // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(430));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(420));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
     //Horaire 06h
  
  pushMatrix();
  translate(472.5,594);
  
  // ---- On commence avec Twitter
    pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(450));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
     // ---- On continue avec Tumblr
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(440));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(460));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
     //Horaire 07h
  
  pushMatrix();
  translate(0,742.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(460));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
  
    // ---- On continue avec Tumblr
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(480));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(470));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
  
     //Horaire 08h
  
  pushMatrix();
  translate(157.5,742.5);
  
  // ---- On commence avec Twitter
    pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(480));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
     // ---- On continue avec Tumblr
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(500));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(490));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
     //Horaire 09h
  
  pushMatrix();
  translate(315,742.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(500));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
  
     // ---- On continue avec Tumblr
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(520));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
  pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(510));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
  
  
  
  
     //Horaire 10h
  
  pushMatrix();
  translate(472.5,742.5);
  
  // ---- On commence avec Twitter
  pushMatrix();
  translate((width/4)/2,(height/6)/2);
  rotate(radians(530));
  translate(-50,0);
  line(0,0,longueurLigneTwitter, 0);
  stroke(#84C8C9);
  popMatrix();
 
    // ---- On continue avec Tumblr
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(520));
  translate(-50,0);
  line(0,0,longueurLigneTumblr, 0);
  stroke(#FBE056);
  popMatrix();
  
   // ---- On continue avec Instagram
   pushMatrix();
 translate((width/4)/2,(height/6)/2);
  rotate(radians(540));
  translate(-50,0);
  line(0,0,longueurLigneInstagram, 0);
  stroke(#E52E26);
  strokeWeight (3);
  strokeCap (ROUND);
  popMatrix();
  
    popMatrix();
 }