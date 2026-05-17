// alumno: Valentina Chavez, materia:ipmi, comision: 3, fecha: 18/04/2026, legajo: 125551/8

void setup() {
  size (640, 480);
  //inicio
  mitad1 = loadImage("data/mitad1.png");
  mitad2 = loadImage("data/mitad2.png");
  posXm1 = (0);
  posXm2 = (0);
  posYlogo = (-200);
  colorbtn = color(100); 
  pantallabtn = true;
  //primeras imagenes
  aespalogo = loadImage("data/logoaespa.png");
}

void draw() { 
  background(228, 239, 235);
  image(mitad1, posXm1, 0, 640, 400);
  image(mitad2, posXm2, 0, 620, 400);
  //separacion de la imagen grupal
  if (pantallabtn == true) {
    //boton forma
    fill(colorbtn);
    rect(233, 392, 150, 50);
  }
  
  if (boton && posXm1 < 900 && posXm2 > -500){
      posXm1++;
      posXm2--;
      //logo
      if (posXm1 > 100 || posXm2 < -100) {
        image(aespalogo, 160, posYlogo);
        if (posYlogo < 37) {
          posYlogo++;
        }
      }
  }
}

void mouseClicked() {
    //funcion boton de inicio
    btn();
    if (btnarea) {
    boton = true;
    colorbtn = color(149, 62, 237);
    pantallabtn = false;
    
  } else {
    boton = false;
    colorbtn = color(100);
  }
  
    println(mouseX, mouseY);
}
