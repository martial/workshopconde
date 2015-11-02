class Glyph {

  int numOfHastags;
  int numOfChars;

  Glyph(int numOfHastags, int numOfChars) {
    this.numOfHastags = numOfHastags;
    this.numOfChars = numOfChars;
  }

  void draw() {

    drawCircle(numOfChars);
    drawHashtag(numOfHastags);
  }

  void drawHashtag(int numOfHastags) {

    pushMatrix();
    scale(.01);

    // je crée une shape ( forme )


    PShape premiereBarre;
    premiereBarre = createShape();

    // je commence ma forme
    premiereBarre.beginShape();
    // je definis une couleur
    premiereBarre.fill(0, 0, 255);

    // j'ajoute des points
    premiereBarre.vertex(88.67, 126.7 );
    premiereBarre.vertex(1604.34, 126.7);
    premiereBarre.vertex(1604.34, 328.27);
    premiereBarre.vertex(88.67, 328.27);
    premiereBarre.endShape(CLOSE);

    // je dessine

    if (numOfHastags > 0 ) {
      shape(premiereBarre, 0, 0);
    }

    PShape deuxiemeBarre;
    deuxiemeBarre = createShape();


    // je commence ma forme
    deuxiemeBarre.beginShape();
    // je definis une couleur
    deuxiemeBarre.fill(0, 0, 255);

    // j'ajoute des points
    deuxiemeBarre.vertex(88.67, 699.12 );
    deuxiemeBarre.vertex(1604.34, 699.12);
    deuxiemeBarre.vertex(1604.34, 900.66);
    deuxiemeBarre.vertex(88.67, 900.66);
    deuxiemeBarre.endShape(CLOSE);

    // je dessine
    if (numOfHastags > 1 ) {
      shape(deuxiemeBarre, 0, 0);
    }

    PShape troisiemeBarre;
    troisiemeBarre = createShape();


    // je commence ma forme
    troisiemeBarre.beginShape();
    // je definis une couleur
    troisiemeBarre.fill(0, 0, 255);

    // j'ajoute des points
    troisiemeBarre.vertex(0, 1328.07 );
    troisiemeBarre.vertex(1515.67, 1328.07);
    troisiemeBarre.vertex(1515.67, 1529.63 );
    troisiemeBarre.vertex(0, 1529.63);
    troisiemeBarre.endShape(CLOSE);

    // je dessine
    if (numOfHastags > 2 ) {
      shape(troisiemeBarre, 0, 0);
    }

    PShape quatriemeBarre;
    quatriemeBarre = createShape();


    // je commence ma forme
    quatriemeBarre.beginShape();
    // je definis une couleur
    quatriemeBarre.fill(0, 0, 255);

    // j'ajoute des points
    quatriemeBarre.vertex(0, 1987.66);
    quatriemeBarre.vertex(1515.67, 1987.66);
    quatriemeBarre.vertex(1515.67, 2189.2);
    quatriemeBarre.vertex(0, 2189.2);
    quatriemeBarre.endShape(CLOSE);

    // je dessine

    if (numOfHastags > 3 ) {
      shape(quatriemeBarre, 0, 0);
    }

    PShape cinquiemeBarre;
    cinquiemeBarre = createShape();

    // je commence ma forme
    cinquiemeBarre.beginShape();
    // je definis une couleur
    cinquiemeBarre.fill(0, 0, 255);

    // j'ajoute des points
    cinquiemeBarre.vertex(175.16, 79.74);
    cinquiemeBarre.vertex(412.09, 0);
    cinquiemeBarre.vertex(751.97, 2199.31);
    cinquiemeBarre.vertex(553.19, 2266.33);

    cinquiemeBarre.endShape(CLOSE);

    // je dessine
    if (numOfHastags > 4 ) {
      shape(cinquiemeBarre, 0, 0);
    }


    PShape sixiemeBarre;
    sixiemeBarre = createShape();
    sixiemeBarre.beginShape();

    sixiemeBarre.fill(0, 0, 255);


    sixiemeBarre.vertex(884.69, 81.12);
    sixiemeBarre.vertex(1121.62, 0);
    sixiemeBarre.vertex(1461.49, 2200.81);
    sixiemeBarre.vertex(1262.71, 2267.55);

    sixiemeBarre.endShape(CLOSE);

    if (numOfHastags > 5 ) {
      shape(sixiemeBarre, 0, 0);
    }




    PShape septiemeBarre;
    septiemeBarre = createShape();

    // je commence ma forme
    septiemeBarre.beginShape();
    // je definis une couleur
    septiemeBarre.fill(0, 0, 255);

    // j'ajoute des points
    septiemeBarre.vertex(507.9, 29.97);
    septiemeBarre.vertex(757.83, 29.97);
    septiemeBarre.vertex(378.9, 2222.96);
    septiemeBarre.vertex(169.29, 2222.96);
    septiemeBarre.endShape(CLOSE);

    // je dessine
    if (numOfHastags > 6 ) {
      shape(septiemeBarre, 0, 0);
    }
    // je crée une shape ( forme )
    PShape huitiemeBarre;
    huitiemeBarre = createShape();

    // je commence ma forme
    huitiemeBarre.beginShape();
    // je definis une couleur
    huitiemeBarre.fill(0, 0, 255);

    // j'ajoute des points
    huitiemeBarre.vertex(1217.36, 38.03);
    huitiemeBarre.vertex(1467.3, 38.03);
    huitiemeBarre.vertex(1088.37, 2231.02);
    huitiemeBarre.vertex(878.75, 2231.02);
    huitiemeBarre.endShape(CLOSE);

    // je dessine
    if (numOfHastags > 7 ) {

      shape(huitiemeBarre, 0, 0);
    }

    popMatrix();
  }

  void drawCircle(int numOfChars) {


    float diametreDuCercle = numOfChars * 20/140;

    fill(255, 0, 0);
    ellipse(30, 10, diametreDuCercle, diametreDuCercle);
  }
}