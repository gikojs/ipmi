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
  fill(btncolor);
  rect(245, 385, 150, 50);
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
  text(texto1, 145, 240, 320, 150);
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
    posXrect = 0;
    posXi = 0;
  }

  fill(0);
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
      text(infowinter, 189, 210, 431, 230);
    }

    fill(225);
    textAlign(LEFT, TOP);
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
  String infokarina = "El 27 de octubre de 2020, SM Entertainment presentó a Karina como la segunda integrante de Aespa. Hizo su debut como líder del grupo el 17 de noviembre de 2020 con el sencillo digital Black Mamba. El 27 de diciembre de 2021, se anunció su incorporación al supergrupo de SM Entertainment, Got the Beat, junto a Winter.";
  contador++;
  if ( contador >= 60*6) {
    contador = 0;
    estado = 5;
    posXrect = 0;
    posXi = 0;
  }

  fill(0);
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
      text("Yoo Ji min", 314, 70);
      textFont(info);
      text("11 de abril de 2000", 359, 95);
      textFont(info);
      text("surcoreana", 391, 120);
      textFont(info);
      text("aespa", 304, 145);
      text("got the beat", 304, 145+20);

      textFont(info);
      textAlign(LEFT, TOP);
      text(infokarina, 189, 210, 431, 230);
    }

    fill(225);
    textAlign(LEFT, TOP);
    textFont(titulo);
    text("karina", posXi, 25);

    textFont(subtitulo);
    text("Nombre:", posXi, 70);

    textFont(subtitulo);
    text("nacimiento:", posXi, 95);

    textFont(subtitulo);
    text("nacionalidad:", posXi, 120);

    textFont(subtitulo);
    text("grupos:", posXi, 145);
  }

  image(karina, 0, posYk, 155, height);

  fill(225);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
}

void pantalla5 () {
  //ning
  String infoning = "El 19 de septiembre de 2016, fue presentada como miembro de SM Rookies, un equipo de predebut de aprendices de SM. El 26 de octubre de 2020, fue presentada como la tercera integrante de Aespa.[7] Hizo su debut el 17 de noviembre con el sencillo digital Black Mamba.";
  contador++;
  if ( contador >= 60*6) {
    contador = 0;
    estado = 6;
    posXrect = 0;
    posXi = 0;
  }

  fill(0);
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
      text("NIng YIzhuo", 314, 70);
      textFont(info);
      text("23 de octubre de 2002", 359, 95);
      textFont(info);
      text("china", 391, 120);
      textFont(info);
      text("aespa", 304, 145);

      textFont(info);
      textAlign(LEFT, TOP);
      text(infoning, 189, 210, 431, 230);
    }

    fill(225);
    textAlign(LEFT, TOP);
    textFont(titulo);
    text("NIngning", posXi, 25);

    textFont(subtitulo);
    text("Nombre:", posXi, 70);

    textFont(subtitulo);
    text("nacimiento:", posXi, 95);

    textFont(subtitulo);
    text("nacionalidad:", posXi, 120);

    textFont(subtitulo);
    text("grupos:", posXi, 145);
  }

  image(ning, 0, posYk, 155, height);

  fill(225);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
}

void pantalla6 () {
  //giselle
  String infogiselle = "Giselle tuvo el entrenamiento más breve registrado para una aprendiz femenina en la historia de SM Entertainment, con apenas un poco más de diez meses de preparación. El 29 de octubre de 2020, se reveló como la cuarta y última integrante de Aespa. Hizo su debut el 17 de noviembre de 2020 con el sencillo digital Black Mamba.";
  contador++;
  if ( contador >= 60*6) {
    contador = 0;
    estado = 7;
    posXrect = 0;
    posXi = 0;
    ;
  }

  fill(0);
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
      text("Eri Uchinaga", 314, 70);
      textFont(info);
      text("30 de octubre de 2000", 359, 95);
      textFont(info);
      text("japonesa", 391, 120);
      textFont(info);
      text("aespa", 304, 145);

      textFont(info);
      textAlign(LEFT, TOP);
      text(infogiselle, 189, 210, 431, 230);
    }

    fill(225);
    textAlign(LEFT, TOP);
    textFont(titulo);
    text("Giselle", posXi, 25);

    textFont(subtitulo);
    text("Nombre:", posXi, 70);

    textFont(subtitulo);
    text("nacimiento:", posXi, 95);

    textFont(subtitulo);
    text("nacionalidad:", posXi, 120);

    textFont(subtitulo);
    text("grupos:", posXi, 145);
  }

  image(giselle, 0, posYk, 155, height);

  fill(225);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
}

void pantalla7() {
  //black mamba

  contador++;
  if ( contador > 60*6) {
    contador = 0;
    estado = 8;
    posXrect = 0;
    posXi = 0;
  }

  background(110, 43, 178);
  image(blackm, 180, 44, tam, tam);

  if (tam < 300) {
    tam = tam + 3;
  } else {
    textAlign(CENTER, CENTER);
    fill(225);
    textFont(titulo);
    text("Black Mamba", 350, 380);
    textFont(info);
    text("debut", 350, 380+40);
  }

  fill(142, 242, 147);
  rect(posXtransicion, 0, 640, 480);

  if ( contador > 180 ) {
    if ( posXtransicion < 0 ) {
      posXtransicion = posXtransicion + 11;
    } else {
      posXtransicion = 0;
    }
  }

  fill(225);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
}

void pantalla8() {

  contador++;
  if ( contador > 60*6) {
    contador = 0;
    estado = 9;
    posXrect = 0;
    posXi = 0;
  }

  String infobm = "El 2 de noviembre, la agencia del grupo confirmó la fecha del debut para el 17 de noviembre a las 6PM KST con la canción Black Mamba. Además, se reveló un video teaser de las integrantes, el nuevo clip, titulado SYNK, æspa. La letra de la canción crea el mundo de aespa al introducir una historia en la que Black Mamba es el villano que amenaza al mundo y bloquea la conexión entre los miembros de aespa y sus avatares virtuales llamados æ.";
  String photos = "Las fotos teaser se dividieron en dos conceptos: mundo real y kwangya el mundo donde habitan los avatares y el cual es amenazado";
  background( 142, 242, 147 );
  fill( 0 );
  textFont( info);
  text( infobm, 10, 20, 640, 460 );
  text ( photos, 10, 141+20, 640, 460 );

  
  image( grupobm, posXrect, 224, 640, 480);
  if (posXrect < 640) {
    posXrect = posXrect + 4;
  } else {
    posXrect = 0;
  }

  fill(225);
  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 440 );
}

void pantalla9 () {
  contador++;
  if ( contador >= 60*6) {
    contador = 0;
    estado = 10;
    btncolor= 222;
  }

  background(110, 43, 178);

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

  image(winterbm, 0, posYk, 155, height);
  image(karinabm, 160, posYg, 155, height);
  image(ningbm, 320, posYk, 155, height);
  image(gisellebm, 480, posYg, 155, height);

  textAlign(LEFT, TOP);
  textFont(subtitulo);
  text( contador, 5, 5 );
  
    //boton
  fill(btncolor);
  rect(245, 385, 150, 50);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(subtitulo);
  text("Reset", 320, 410);
  
}
