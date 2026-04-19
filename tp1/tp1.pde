// alumno: Valentina Chavez, materia:ipmi, comision: 3, fecha: 18/04/2026, legajo: 125551/8

PImage img;

void setup(){
  size(800,400);
  img= loadImage("data/mural.jpg");
}

void draw(){
  background(97, 84, 188);
  image(img, 0, 0, width/2, 400);
  line(400, 400, 400, 0);
    
  //triangulo
    noStroke();
    strokeWeight(10);
    fill(175, 115, 205);
    triangle(650, 240, 840, 283, 787, 150);
    noStroke();
    fill(247, 175, 238);
    triangle(787, 152, 675, 147, 728, 193);
    stroke(247, 175, 238);
    strokeWeight(3);
    line(785, 154, 800, 178);
   
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
      quad(656, 320, 687, 241, 774, 268, 756, 352);
      noStroke();
      fill(84, 100, 160);
      quad(758, 353, 726, 400, 656, 400, 663, 322);
      
  //elipse base
  noStroke();
  fill(48, 46, 57);
  ellipse(600, 240, 310, 290);
  
  //elipse1 (atras del edificio3)
    noStroke();
    fill(57, 227, 132);
    ellipse(490, 350, 120, 140);
    fill(255, 213, 121);
    ellipse(528, 362, 50, 50);

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
  
      
  //ellipse2 (a la mitad)
    fill(247, 175, 238);
    ellipse(720, 410, 120, 120);
    
    //formas amarillas(arriba del elipse)
      noStroke();
      fill(255, 213, 121);
      //arribs
      triangle(679, 379, 679, 348, 693, 358);
      triangle(687, 360, 700, 334, 711, 349);
      triangle(703, 344, 718, 317, 729, 352);
      triangle(726, 355, 738, 333, 758, 368);
      //abajo
      beginShape();
      vertex(678, 364);
      vertex(681, 375);
      vertex(691, 378);
      vertex(701, 381);
      vertex(713, 381);
      vertex(719, 380);
      vertex(725, 380);
      vertex(734, 378);
      vertex(743, 374);
      vertex(751, 370);
      vertex(756, 367);
      
      //arriba
      vertex(748, 359);
      vertex(740, 354);
      vertex(733, 352);
      vertex(724, 345);
      vertex(714, 341);
      vertex(706, 345);
      vertex(697, 349);
      vertex(692, 355);
      vertex(685, 362);
      vertex(682, 367);
      endShape();
}

void mousePressed() {
    println(mouseX , mouseY);
}
