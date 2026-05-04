//variables pantallas
color fondo = color (0, 0, 0);
color pantalla1 = color(0, 0, 0);
color pantalla2 = color(73, 109, 49);
color pantalla3 = color(16, 109, 227);
color pantalla4 = color(0,0,0);
color pantalla5 = color(0,0,0);

void setup() {
  size (640, 480);
  background(fondo);
}

void draw() { 
  //separa las pantallas
  if (fondo == pantalla1) {
    background (pantalla1);
  } else if (fondo == pantalla2) {
    background (pantalla2);
  } else if (fondo == pantalla3) {
    background (pantalla3);
  }
  /*boton
   rect(10, 430, 100, 50);
   rect(540, 430, 100, 50); */
}

/*void mousePressed() {
  //boton presionado
 
 if (mouseButton == LEFT ) {
   fill(170, 41, 41);
   background(pantalla1);
 }else {
   fill (255, 255, 255);
 }
}*/

//btn laterales
void keyPressed() {
  //botones, navegacion
  if (keyCode == RIGHT) {
    if (fondo == pantalla1) {
      fondo = pantalla2;
    } else if (fondo == pantalla2) {
      fondo = pantalla3;
    } else if (fondo == pantalla3) {
      fondo = pantalla1;
    }
  } else if (keyCode == LEFT) {
    if (fondo == pantalla2) {
      fondo = pantalla1;
    } else if (fondo == pantalla3) {
      fondo = pantalla2;
    }
  }
/*  if (keyCode == RIGHT) {
    background(pantalla2);
  } else if (keyCode == LEFT) {
    background(pantalla3);
  } else {   
  } */
} 
