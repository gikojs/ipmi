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
  text( contador, 30, 30);
  image(aespalogo, 150, 100);

  //texto
  fill(0);
  textFont(titulo);
  textAlign(CENTER, CENTER);
  text("¿Que significa Aespa?", 320, 300, 400, 130);

  textFont(info);
  textAlign(CENTER, CENTER);
  text(texto1, 320, 310, 400, 150);
}

void pantalla2() {
  background(0);
}
