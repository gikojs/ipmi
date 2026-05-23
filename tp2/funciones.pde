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
  textFont(titulo);
  text("INICIAR", 320, 410);
}

void pantalla1() {
  contador++;
  if ( contador >= 60*5) {
    estado = 2;
    contador = 0;
  }

  background(228, 239, 235);
  textAlign(LEFT, LEFT);
  text( contador, 5, 25);
  image(aespalogo, 150, 100);

  //texto
  fill(0);
  textFont(titulo);
  textAlign(CENTER, CENTER);
  text("¿Que significa Aespa?", 309, 243);

  textFont(info);
  textAlign(CENTER, CENTER);
  text(texto1, 320, 310, 400, 150);
}

void pantalla2() {
  contador++;
  if ( contador >= 60*6) {
    contador = 0;
    estado = 3;
  }

  background(0);
  textAlign(LEFT, TOP);
  text( contador, 5, 25 );

  if ( posYk > 0 ) {
    posYk = posYk - 3;
  } else {
    posYk = 0;
  }
  if ( posYg > 400 ) {
    posYg = posYg- 3;
  } else {
    posYg = 400;
  }
  
  image(karina, 0, posYk, 155, height);
  image(winter, 160, posYg, 155, height);
  image(ning, 320, posYk, 155, height);
  image(giselle, 480, posYg, 155, height);
}

void pantalla3 () {
  background(137, 43, 222);
}
