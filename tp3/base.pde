void cuadrados () {
  for (int j=0; j<cont; j++) {
    for (int i=0; i<cont; i++) {
      if ( (i+j)%2 == 0 ) { //sumo directamenre las filas y las columnas y pregunto directamente
        noStroke();
        c_cuadrados1 = rosa;
        fill (c_cuadrados1);
      } else {
        noStroke();
        c_cuadrados2 = morado;
        fill (c_cuadrados2);
      }
      rect(400+(400/cont)*i, 0+400/cont*j, 400/cont, 400/cont);
    }
  }
}

void corazones (float x_, float y_, float ancho_, float alto_, float cant_) {
  float posX;
  float posY;
  float t_celda = 400/cont; //calcular el tamaño del cuadrado

  for (int j=0; j<cont_corazon; j++) {
    for (int k=0; k<cont_corazon; k++) {
      pushMatrix();

      posX = x_ + (k*t_celda);
      posY = y_ + (j*t_celda);

      translate(posX, posY);
      noStroke();

      for (int i=4; i<cant_; i++) {

        float tamX = map (i, 0, cant_, ancho_, 0);
        float tamY = map(i, 1, cant_, alto_, 0);
        
        if ((j+k)%2 == 0 ) { //sumo directamenre las filas y las columnas y pregunto si es par o impar
          noStroke();
          c_corazon1 = blanco;
          fill (c_corazon1);
        } else {
          noStroke();
          c_corazon2 = rojo;
          fill (c_corazon2);
        }

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
    }
  }
}
