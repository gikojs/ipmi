float cont = 12;
float cont_corazon = 30;

PImage obra;

color rojo;
color blanco;
color morado;
color rosa;

color c_corazon1;
color c_corazon2;
color c_cuadrados1;
color c_cuadrados2;

/* Rosa claro (Fondo de octágonos): RGB(247, 190, 203)
 Morado / Púrpura (Cuadrados intercalados): RGB(158, 91, 166)
 Rojo (Corazones principales): RGB(190, 11, 23)
 */
void setup() {
  obra = loadImage("20.jpg");
  size(800, 400);
  rojo = color(190, 11, 23);
  blanco = color(255);
  morado = color(158, 91, 166);
  rosa = color(247, 190, 203);
}

void draw() {
  background(225);
  image(obra, 0, 0, 400, 400);

  cuadrados();

  float mod=20;
  corazones(400, 0, mod, mod, 10);
}

void mousePressed () {
  println(mouseX, mouseY);
}
