void setup() {
  
  size(630,891);
  
}

void draw() {
  
  background(255,255,255);
  
  // je definis ma variable String qui est une chaine de caracteres et je l'appelle monTexte
  String monTexte = "Ceci est un super mega tweet";
  
  // je definis une variable int ( nombre entier ) qui va stocker le nombre de caracteres en appelant monTexte.length()
  int nombreDeCaracteres = monTexte.length();
  
  // j'imprime dans la console ma variable pour vérifier
  println(nombreDeCaracteres);
  
  // je fais une ellipse, qui prends en parametres (x,y,diametre horizontal, diametre vertical )
  ellipse(width/2, height/2, nombreDeCaracteres,nombreDeCaracteres);
  
  // exercice : 
  // Sachant que le nombre maximum de characteres dans un tweet est de 140
  // Comment dessiner une ellipse proportionelle au nombre de characteres de monTexte
  // Tips : je vais avoir besoin de definir dans une variable le diametre maximum pour mon texte
  
  
}