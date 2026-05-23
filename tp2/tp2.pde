void setup() {
  size (640, 480);

  //declaraciones
  //fuentes
  titulo = loadFont("CopperplateGothic-Bold-40.vlw");
  subtitulo = loadFont("CopperplateGothic-Bold-25.vlw");
  info = loadFont("CopperplateGothic-Light-20.vlw");

  //imagenes
  mitad1 = loadImage("data/mitad1.png");
  mitad2 = loadImage("data/mitad2.png");
  aespalogo = loadImage("data/logoaespa.png");

  karina = loadImage("data/karina.png");
  winter = loadImage("data/winter.png");
  giselle = loadImage("data/giselle.png");
  ning = loadImage("data/ning.png");

  //pos
  posXm1 = 0;
  posXm2 = 0;
  posYlogo = -100;

  posYk = 400;
  posYg = -400;
  posXrect = -600;
  posXi = 0;

  //colores
  btncolor = color(222);

  //textos
  texto1 = "creado al combinar æ que significa: Avatar X Experiencia y la palabra inglesa aspect (aspecto), que significa doble cara. Basándose en la cosmovisión de conocer a un avatar y experimentar un mundo nuevo.";
}

void draw() {
  if ( estado == 0) {
    pantallainicio();
    //transicion dsp de presionar el boton
    if (btncolor == color(170, 80, 232)) {
      posXm1++;
      posXm2--;
      if ( posXm1 > 100 && posXm2 < 0) {
        image(aespalogo, 150, posYlogo);
        if (posYlogo < 100) {
          posYlogo++;
        } else {
          estado = 1;
          contador = 0;
        }
      }
    }
  } else if ( estado == 1 ) {
    pantalla1();
  } else if ( estado == 2 ) {
    pantalla2();
  } else if ( estado == 3 ) {
    pantalla3();
  } else if ( estado == 4 ) {
    pantalla4();
  } else if ( estado == 5 ) {
    pantalla5();
  } else if ( estado == 6 ) {
    pantalla6();
  } else if ( estado == 7 ) {
    pantalla7();
  }
}

void mousePressed() {
  if ( estado == 0 ) {
    if (btnarea(320, 410, 150, 50)) {
      btncolor = color(170, 80, 232);
    }
  }
  println(mouseX, mouseY);
}
