float cont = 12;
float cont_corazon = 13;

PImage obra;

color rojo;
color blanco;
color morado;
color rosa;

color c_corazon;
color clicks;

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
  clicks = 0;
}

void draw() {
  background(225);

  cuadrados();

  float mod=20;
  corazones(400, 0, mod, mod, 10);

  image(obra, 0, 0, 400, 400);
}

void mousePressed () {
  println(mouseX, mouseY);
  
  if (clicks==0) {
    clicks++;
  } else if (clicks==1) {
  }
  
}
