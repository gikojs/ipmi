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
    noStroke();
    fill(247, 175, 238);
    //ellipse(715, 350, 100, 100);
    
  //triangulo
    stroke(247, 175, 238);
    strokeWeight(10);
    fill(175, 115, 205);
    triangle(650, 240, 840, 283, 790, 150);
    noStroke();
    fill(247, 175, 238);
    triangle(792, 144, 675, 147, 718, 194);
   
   //edificio 3 parte de atras del elipse)
    noStroke();
    fill(247, 175, 238);
    quad(400, 150, 600, 240, 600, 300, 400 ,220);
    noStroke();
    
      //parte izquierda
      fill(247, 175, 238);
      quad(706, 250, 800, 274, 800, 371, 567, 275);
      //fondo
      fill(255, 213, 121);
      quad( 686, 324, 800, 371, 800, 400, 689, 400);
      //pieza azul
      fill(85, 150, 216);
      quad(656, 320, 687, 241, 781, 266, 766, 353);
      
  //elipse base
  noStroke();
  fill(48, 46, 57);
  ellipse(600, height/2, 260, 250);  

  //edificio3 (atravesando el elipse)
    //fondo
      noStroke();
      fill(175, 115, 205);
      quad(400, 250, 600, 330, 600, 390, 400, 310);
 //parte inferior
  noStroke();
  fill(247, 175, 238);
  quad(400, 200, 600, 290, 600, 330, 400, 250);
  
    // pieza azul
      noStroke();
      fill(85, 150, 216);
      quad(450, 223, 570, 276, 570, 318, 407, 253);
      
  //edificio2
  noStroke();
  fill(247, 175, 238);
  quad(670, 180, 690, 195, 690, 400, 670, 400);
    
  //edificio1
  noStroke();
  fill(97, 84, 188);
  rect(570, 140, 60, 300);
  fill(57, 227, 132);
  quad(630, 140, 670, 165, 670, 400, 630, 400);
}

void mousePressed() {
    println(mouseX , mouseY);
}
