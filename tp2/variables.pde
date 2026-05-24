int estado;
int contador;

//imagenes
PImage mitad1;
PImage mitad2;
PImage aespalogo;

PImage winter;
PImage karina;
PImage ning;
PImage giselle;

PImage blackm;
PImage grupobm;
PImage karinabm;
PImage winterbm;
PImage gisellebm;
PImage ningbm;

PImage grupokw;
PImage karinakw;
PImage winterkw;
PImage gisellekw;
PImage ningkw;

//colores

//pos
int posXm1;
int posXm2;

int posYlogo;

//integrantes
int posYk;
int posYg;

int posXrect;
int posXi;

int posXtransicion;

//tamaño
int tam;

//btn de inicio
color btncolor;
boolean btnarea(float x_, float y_, float ancho_, float alto_) {
  if (mouseX > x_-ancho_/2 && mouseX < x_+ancho_/2 && mouseY > y_-alto_/2 && mouseY < y_+alto_/2) {
    return true;
  } else {
    return false;
  }
}

//fuentes
PFont titulo;
PFont subtitulo;
PFont info;

//textos
String texto1;
