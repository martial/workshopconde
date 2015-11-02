float x = 0;
float y = 0;
float vitesse = 3.0;
float diametreDuCercle = 10;

float sens = 1.0;

void setup() {
  
  size(400,400);
  
}

void draw() {
  
  background(255,diametreDuCercle,255);
  
  if(diametreDuCercle == 200 ) {
   sens = -1;
  } 
    if(diametreDuCercle == 0 ) {
      sens = 1;
    }
    
   diametreDuCercle = diametreDuCercle + sens; 

  fill(diametreDuCercle,0,diametreDuCercle);
  ellipse(width/2, height/2, diametreDuCercle, diametreDuCercle);
  
}