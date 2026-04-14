// alumno: Valentina Chavez, materia:ipmi, comision: 3

PImage img;

void setup(){
  size(800,400);
  img= loadImage("mural.jpg");
}

void draw(){
  background(97, 84, 188);
  image(img, 0, 0, width/2, 400);
  line(400, 400, 400, 0);
  
  //elipse base
  ellipse(600, height/2, 260, 250);
  
  //edificio1
  rect(590, 140, 40, 300);
    //linea fondo
      line(630, 140, 670, 165);
    //linea alto
      line(670, 165, 670, 400);
  
  //edificio2
    //linea fondo
      line(670, 180, 690, 195);
    //linea alta
      line(690, 195, 690, 400);
  
  //edificio3 (atravesando el elipse)
    //atravesando el elipse
      //superior
        line(400, 180, 800 ,275);
          //mitad izq
            line(590, 290, 491, 260);
      //inferior
        line(800, 370, 400, 270);
    //fondo izq
      line(590, 370, 400, 310);
      
  //elipse1 (atras del edificio3)
    ellipse(490, 350, 90, 100);
    
  //ellipse2 (a la mitad)
    ellipse(715, 350, 100, 100);
    
  //triangulo
    triangle(650, 240, 840, 283, 790, 150);
    line(790, 150, 725, 160);
}
