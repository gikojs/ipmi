// alumno: Valentina Chavez, materia:ipmi, comision: 3

PImage img;

void setup(){
  size(800,400);
  img= loadImage("data/mural.jpg");
}

void draw(){
  background(97, 84, 188);
  image(img, 0, 0, width/2, 400);
  line(400, 400, 400, 0);

  //elipse1 (atras del edificio3)
    noStroke();
    fill(57, 227, 132);
    ellipse(490, 350, 90, 100);
    
  //ellipse2 (a la mitad)
    fill(247, 175, 238);
    ellipse(715, 350, 100, 100);
    
  //triangulo
    fill(175, 115, 205);
    triangle(650, 240, 840, 283, 790, 150);
    line(790, 150, 69, 161);
   
   //edificio 3 (atravesando el elipse)
    fill(247, 175, 238);
    quad(400, 150, 600, 240, 600, 300, 400 ,220);
      
  //elipse base
  fill(48, 46, 57);
  ellipse(600, height/2, 260, 250);  

  //edificio3 (atravesando el elipse)
    //fondo
      fill(175, 115, 205);
      quad(400, 250, 600, 330, 600, 390, 400, 310);
 
  fill(247, 175, 238);
  quad(400, 200, 600, 290, 600, 330, 400, 250);
  fill(85, 150, 216);
  quad(500, 200, 600, , 600, 300, 400, 250);
  
  //edificio1
  fill(97, 84, 188);
  rect(570, 140, 60, 300);
  fill(57, 227, 132);
  quad(630, 140, 670, 165, 670, 400, 630, 400);
  
  //edificio2
  fill(247, 175, 238);
  quad(670, 180, 690, 195, 690, 400, 670, 400);
}

void mousePressed() {
    
}
