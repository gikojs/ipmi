float cont = 12;
PImage obra;
color rojo, blanco;

/* Rosa claro (Fondo de octágonos): RGB(247, 190, 203)
 Morado / Púrpura (Cuadrados intercalados): RGB(158, 91, 166)
 Rojo (Corazones principales): RGB(190, 11, 23)
 */
void setup() {
  obra = loadImage("20.jpg");
  size(800, 400);
  rojo = color(190, 11, 23);
  blanco = color(255);
}

void draw() {
  background(225);
  image(obra, 0, 0, 400, 400);

  cuadrados();

  float mod=20;
  for (float a=19.8; a<40; a++) {
    for (int b=0; b<20; b++) {
      corazones(a*mod, b*mod, mod, mod, 10, rojo, blanco);
    }
  }
}

void mousePressed () {
  println(mouseX, mouseY);
}
