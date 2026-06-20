void cuadrados () {
  for (int j=0; j<cont; j++) {
    for (int i=0; i<cont; i++) {
      if ( (i+j)%2 == 0 ) { //sumo directamenre las filas y las columnas y pregunto directamente
        noStroke();
        c_cuadrados = rosa;
        fill (c_cuadrados);
      } else {
        noStroke();
        c_cuadrados = morado;
        fill (c_cuadrados);
      }
      rect(400+(400/cont)*i, 0+400/cont*j, 400/cont, 400/cont);
    }
  }
}

void corazones (float x_, float y_, float ancho_, float alto_, float cant_) {
  float posX;
  float posY;
  float t_cuadrado = 400/cont; //calcular el tamaño del cuadrado

  for (int j=0; j<=cont_corazon; j++) {
    for (int k=0; k<=cont_corazon; k++) {
      pushMatrix();

      posX = x_ + (k*t_cuadrado);
      posY = y_ + (j*t_cuadrado);

      translate(posX, posY);
      noStroke();

      int cont_colores = (k-j+11) % 13; //que no pase los 12 if
      color color_click = rojo;
      color color_base = rojo_base;
      
      if (cont_colores == 0) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 1) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 2) {
        color_click = blanco;
        color_base = blanco_base;
      } else if (cont_colores == 3) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 4) {
        color_click = blanco;
        color_base = blanco_base;
      } else if (cont_colores == 5) {
        color_click = blanco;
        color_base = blanco_base;
      } else if (cont_colores == 6) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 7) {
        color_click = blanco;
        color_base = blanco_base;
      } else if (cont_colores == 8) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 9) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 10) {
        color_click = blanco;
        color_base = blanco_base;
      } else if (cont_colores == 11) {
        color_click = rojo;
        color_base = rojo_base;
      } else if (cont_colores == 12) {
        color_click = blanco;
        color_base = blanco_base;
      }

    //medir distancia para interactividad
      float d = dist(posX, posY, mouseX, mouseY);

      float radio= 100;

      c_corazon = c_cambio(color_base, color_click, d, radio);
      
      fill(c_corazon);

      //funcion
      if ((j+k-j+11) % 13 == 0) {
        c_corazon = c_cambio (morado, rosa, d, radio);
      } else {
        c_corazon = c_cambio(rojo, rosa, d, radio);
      }

      //queria que el movimiento sea tipo robotico
      if ( (mouseX >= 400) && (mouseX <= 800) && (mouseY >= 0) && (mouseY <= 400) ) {
        if ( (mouseX>=400) && (mouseX<=800) && (mouseY>=0) && (mouseY<=100) ) {
          rotate(PI);
        } else if ( (mouseX>=600) && (mouseX<=800) && (mouseY>=100) && (mouseY<=200) ) {
          rotate(PI+QUARTER_PI);
        } else if ( (mouseX>=600) && (mouseX<=800) && (mouseY>=200) && (mouseY<=300) ) {
          rotate(-HALF_PI);
        } else if ( (mouseX>=600) && (mouseX<=800) && (mouseY>=300) && (mouseY<=400) ) {
          rotate(QUARTER_PI-HALF_PI);
        } else if ( (mouseX>=550) && (mouseX<=800) && (mouseY>=400) && (mouseY<=500) ) {
          rotate(-PI);
        } else if ( (mouseX>=350) && (mouseX<=550) && (mouseY>=300) && (mouseY<=400) ) {
          rotate(HALF_PI-QUARTER_PI);
        } else if ( (mouseX>=350) && (mouseX<=600) && (mouseY>=200) && (mouseY<=300) ) {
          rotate(HALF_PI);
        } else if ( (mouseX>=350) && (mouseX<=600) && (mouseY>100) && (mouseY<=200) ) {
          rotate(PI-QUARTER_PI);
        }
      } else {
        //cuando el mouse sale de la pantalla se reinicia
      }

      for (int i=4; i<cant_; i++) {
        float tamX = map (i, 0, cant_, ancho_, 0);
        float tamY = map(i, 1, cant_, alto_, 0);

        //corazon forma
        ellipse(-tamX * 0.25, 0, tamX * 0.5, tamY * 0.8);
        ellipse(tamX * 0.25, 0, tamX * 0.5, tamY * 0.8);

        // Punta inferior del corazon
        beginShape();
        // Lado izquierdo
        vertex(-tamX * 0.49, 0);
        vertex(-tamX * 0.42, tamY * 0.34);
        vertex(-tamX * 0.20, tamY * 0.52);
        vertex(0, tamY * 0.72);

        // Lado derecho
        vertex(tamX * 0.20, tamY * 0.52);
        vertex(tamX * 0.42, tamY * 0.34);
        vertex(tamX * 0.49, 0);
        endShape(CLOSE);
      }

      popMatrix();

      //para que en la siguiente fila(j) se sume 1

      if (cont_colores<13) {
        cont_colores++;
      } else {
        cont_colores=0;
      }
    }
  }
}
