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
  
  // je crée une shape ( forme )
  PShape premiereBarre;
  premiereBarre = createShape();
  
  // je commence ma forme
  premiereBarre.beginShape();
  // je definis une couleur
  premiereBarre.fill(0, 0, 255);
  
  // j'ajoute des points
  premiereBarre.vertex(0, 0);
  premiereBarre.vertex(0, 320);
  premiereBarre.vertex(50, 50);
  premiereBarre.vertex(50, 0);
  premiereBarre.endShape(CLOSE);
  
  // je dessine
  shape(premiereBarre, 0,0);

  //exercice dessinger le hastage en entier ( avec les neufs );
  
  

}