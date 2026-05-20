// alumno: Valentina Chavez, materia:ipmi, comision: 3, fecha: 18/04/2026, legajo: 125551/8

void setup() {
  size (640, 480);
  //inicio
  mitad1 = loadImage("data/mitad1.png");
  mitad2 = loadImage("data/mitad2.png");
  posXm1 = (0);
  posXm2 = (0);
  posYlogo = (-200); 
  pantallabtn = true;
  
  //textos
  tinfo = 0;
  ftitulo = loadFont("AgencyFB-Bold-25.vlw");
  finfo = loadFont("Calibri-Light-25.vlw");
  
  //primeras imagenes
  aespalogo = loadImage("data/logoaespa.png");
  texto1 = "Es el resultado de combinar æ  que significa: Avatar X Experiencia y la palabra inglesa aspect (aspecto), que significa doble cara introduciendo el concepto de metaverso al K-pop, dando a conocer un nuevo mundo virtual.";
}

void draw() { 
  background(228, 239, 235);
  image(mitad1, posXm1, 0, 640, 400);
  image(mitad2, posXm2, 0, 620, 400);
  //separacion de la imagen grupal
  if (pantallabtn == true) {
    //boton forma
    fill(222);
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
          
        if (posYlogo >= 37 && tinfo < 500) {
          fill(0);
          textFont(finfo);
          text("es un grupo femenino surcoreano formado por SM Entertainment.", 20, 185, 540, 50);
          textFont(ftitulo);
          text("¿Por qué Aespa?", 20, 210);
          textFont(finfo);
          text(texto1, 20, 200, 540, 300);
          tinfo++;  
        }
      }
  }
}

void mouseClicked() {
    //funcion boton de inicio
    btn();
    if (btnarea) {
    boton = true;
    pantallabtn = false;
    
  } else {
    boton = false;
  }
  
    println(mouseX, mouseY);
}
