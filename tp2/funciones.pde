void integrantes() {
  image(winter, 0, posYk, 155, height);
  image(karina, 160, posYg, 155, height);
  image(ning, 320, posYk, 155, height);
  image(giselle, 480, posYg, 155, height);
}

void pantallainicio() {
  background(228, 239, 235);
  image(mitad1, posXm1, 0, 640, 400);
  image(mitad2, posXm2, 0, 640, 400);
  //boton
  rectMode(CENTER);
  fill(btncolor);
  rect(320, 410, 150, 50);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(subtitulo);
  text("INICIAR", 320, 410);
}

void pantalla1() {
  contador++;
  if ( contador >= 60*5) {
    estado = 2;
    contador = 0;
  }

  background(228, 239, 235);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5);
  image(aespalogo, 150, 100);

  //texto
  fill(0);
  textFont(subtitulo);
  textAlign(CENTER, CENTER);
  text("¿Que significa Aespa?", 309, 243);

  textFont(info);
  textAlign(CENTER, CENTER);
  text(texto1, 320, 310, 400, 150);
}

void pantalla2() {
  //integrantes
  contador++;
  if ( contador >= 60*3) {
    contador = 0;
    estado = 3;
  }

  background(0);

  if ( posYk > 0 ) {
    posYk = posYk - 3;
  } else {
    posYk = 0;
  }
  if ( posYg < 0 ) {
    posYg = posYg + 3;
  } else {
    posYg = 0;
  }

  integrantes();

  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
}

void pantalla3 () {
  //winter
  String infowinter = "El 26 de octubre de 2020, fue presentada como la primera integrante de Aespa. Hizo su debut el 17 de noviembre de 2020 con el sencillo digital Black Mamba. El 27 de diciembre de 2022, se anunció su incorporación al supergrupo de SM Entertainment, Got the Beat, junto a su compañera de grupo Karina y otras reconocidas artistas de la compañía.";

  contador++;
  if ( contador >= 60*6) {
    contador = 0;
    estado = 4;
  }

  fill(0);
  noStroke();
  rect(posXrect, 0, 640*2, 480*2);

  //el rectangulo tapa el fondo
  if ( posXrect < 0 ) {
    posXrect = posXrect + 6;
  } else {
    posXrect = 0;
    if ( posXi < 189 ) {
      posXi = posXi + 3;
    } else {
      posXi = 189;

      fill(225);
      textAlign(LEFT, TOP);
      textFont(info);
      text("kim min jeong", 314, 70);
      textFont(info);
      text("1 de enero de 2001", 359, 95);
      textFont(info);
      text("surcoreana", 391, 120);
      textFont(info);
      text("aespa", 304, 145);
      text("got the beat", 304, 145+20);
            
      textFont(info);
      textAlign(LEFT, TOP);
      text(infowinter, 280, 240, 189, 210 );
    }

    fill(225);
    textFont(titulo);
    text("winter", posXi, 25);

    textFont(subtitulo);
    text("Nombre:", posXi, 70);

    textFont(subtitulo);
    text("nacimiento:", posXi, 95);

    textFont(subtitulo);
    text("nacionalidad:", posXi, 120);

    textFont(subtitulo);
    text("grupos:", posXi, 145);
  }

  image(winter, 0, posYk, 155, height);

  fill(225);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
}

void pantalla4 () {
  //karina
  background(100);
}
