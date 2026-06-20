// alumno: Valentina Chavez, materia:ipmi, comision: 3, legajo: 125551/8

//video adjunto https://youtu.be/1bwEi2Z-DlY

float cont = 12;
float cont_corazon = 13;

PImage obra;

color rojo_base;
color blanco_base;
color morado_base;
color rosa_base;

color rojo;
color blanco;
color morado;
color rosa;

color c_corazon;
color c_cuadrados;
color clicks;

/* Rosa claro (Fondo de octágonos): RGB(247, 190, 203)
 Morado / Púrpura (Cuadrados intercalados): RGB(158, 91, 166)
 Rojo (Corazones principales): RGB(190, 11, 23)
 */
void setup() {
  obra = loadImage("20.jpg");
  size(800, 400);
  rojo_base = color(190, 11, 23);
  blanco_base = color(255);
  morado_base = color(158, 91, 166);
  rosa_base = color(247, 190, 203);

  //colores a modificar
  rojo = rojo_base;
  blanco = blanco_base;
  morado = morado_base;
  rosa = rosa_base;

  clicks = 0;
}

void draw() {
  background(225);

  cuadrados();

  float mod=20;
  if (mouseX > 550 && mouseX < 650 && mouseY > 150 && mouseY < 250) {
    mod = 20 + random(-3, 3);
  }
  corazones(400, 0, mod, mod, 10);

  image(obra, 0, 0, 400, 400);
}

//juego de colores
color c_cambio( color col1, color col2, float distmouse, float radio) {

  //evitar fallas
  if (distmouse>radio) {
    distmouse=radio;
  }
  float mezcla = map(distmouse, 0, radio, 0, 1);
  return lerpColor(col1, col2, mezcla);
}

void mousePressed () {
  println(mouseX, mouseY);

  if (clicks==0) {
    rojo = rojo_base;
    blanco = blanco_base;
    morado = morado_base;
    rosa = rosa_base;
    clicks=1;
  } else if (clicks==1) {
    rojo= color(100, 110, 104);
    blanco= color(215, 217, 215);
    morado= color (180, 142, 174);
    rosa= color (186, 172, 189);
    clicks=2;
  } else if (clicks==2) {
    rojo= color(92, 111, 104);
    blanco= color(167, 255, 246);
    morado= color (149, 217, 195);
    rosa= color (164, 249, 200);
    clicks=3;
  } else if (clicks==3) {
    rojo= color(16, 69, 71);
    blanco= color(210, 214, 239);
    morado= color (114, 112, 114);
    rosa= color (175, 146, 157);
    clicks=4;
  } else if (clicks==4) {
    rojo= color(23, 10, 28);
    blanco= color(193, 154, 183);
    morado= color (34, 140, 219);
    rosa= color (156, 149, 220);
    clicks=5;
  } else if (clicks==5) {
    rojo= color(234, 144, 16);
    blanco= color(234, 239, 189);
    morado= color (144, 190, 109);
    rosa= color (201, 227, 172);
    clicks=0;
  }
}
