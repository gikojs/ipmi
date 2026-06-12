void cuadrados () {
  for (int j=0; j<cont; j++) {
    for (int i=0; i<cont; i++) {
      if ( j%2==0 ) {
        if ( i%2==0 ) {
          noStroke();
          fill (247, 190, 203);
        } else {
          noStroke();
          fill (158, 91, 166);
        }
      } else {
        if ( i%2!=0 ) {
          fill(247, 190, 203);
        } else {
          fill(158, 91, 166);
        }
      }
      rect(400+(400/cont)*i, 0+400/cont*j, 400/cont, 400/cont);
    }
  }
}

void corazones (float x_, float y_, float ancho_, float alto_, float cant_, color rojo_, color blanco_) {
  pushMatrix();
  translate(x_, y_);
  noStroke();

  for (int i=5; i<cant_; i++) {
    float tamX = map (i, 0, cant_, ancho_, 0);
    float tamY = map(i, 1, cant_, alto_, 0);
    for (int j=0; j<cont; j++) {
      for (int k=0; i<cont; i++) {
        if ( j%2==0 ) {
          if ( k%2==0 ) {
            noStroke();
            fill (190, 11, 23);
          } else {
            noStroke();
            fill (158, 91, 166);
          }
        } else {
          if ( k%2!=0 ) {
            fill(247, 190, 203);
          } else {
            fill(158, 91, 166);
          }
        }
        //corazon forma
        ellipse(-tamX * 0.25, 0, tamX * 0.5, tamY * 0.8);
        ellipse(tamX * 0.25, 0, tamX * 0.5, tamY * 0.8);

        // Punta inferior del corazón adaptada para achicarse proporcionalmente
        beginShape();
        // Lado izquierdo
        vertex(-tamX * 0.49, 0);
        vertex(-tamX * 0.42, tamY * 0.34);
        vertex(-tamX * 0.20, tamY * 0.52);
        vertex(0, tamY * 0.72); // Punta central inferior

        // Lado derecho
        vertex(tamX * 0.20, tamY * 0.52);
        vertex(tamX * 0.42, tamY * 0.34);
        vertex(tamX * 0.49, 0);
        endShape(CLOSE);
      }
    }
  }
  popMatrix();
}
