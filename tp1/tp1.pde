//variables de imagenes:
//introduccion
PImage fondo;
PImage soga;
PImage tnt;
PImage mecha;
//willie
PImage will1;
PImage will2;
PImage will3;
PImage will4;
//boton
PImage boton;

int strtMecha ;
int txtS ;
float x, y;
int x1;
PFont tite ;
void setup() {
  //cargado de imagenes:
  fondo= loadImage("fondo.png");
  soga= loadImage("soga.png");
  tnt= loadImage("tnt.png");
  mecha= loadImage("mecha.png");
  will1= loadImage("willie 1.jpg");
  will2 = loadImage("willie 2.jpg");
  will3 = loadImage("willie 3.jpg");
  will4= loadImage("willie 4.jpg");
  boton= loadImage("boton.png");
  
  size(800, 400);
  background (1);
  image(fondo, 0, 0);
  strtMecha= -700;
  tite = loadFont("Titul.vlw");
  txtS =30;
  x = 0;
  x1 =0;
  y =0;
  textFont(tite);
}
void draw() {
  println(frameCount);
  image(fondo, 0, 0);
  image(soga, 0, 0);
  image(tnt, 0, 0);
  image(mecha, strtMecha, 0);
  fill(200, 0, 0);
  textSize(46);
  text("Willie el triste...", txtS, 100);
  if (frameCount == 100);
  {
    strtMecha =-700+frameCount;
    txtS =-20+frameCount/2;
  }
  if (frameCount >400) {
    image(will1, 0, 0);
    fill(200, 0, 0);
    textSize(100);
    text("Este es\nWillie", x+50, 150);
    x+=1;
    if (x > width/5 ){
      x= 50 ;
    }
  }
  if (frameCount > 500) {
    image (will1, 0, 0);
    fill(200, 0, 0);
    textSize(100);
    text("willie", x+50, 150);
    text("está", x+50, 200);
    text("triste", x+50, 250);
    x+=(1)/4;
  }
  if (frameCount > 600) {
    image (will2, 0, 0);
    fill(x+50, 0, 0);
    textSize(100);
    text("Will quiere\nuna mascara\nde conejo", 50, 150);
    x+=(1)%4;
  }
  if (frameCount > 700) {
    image (will3, 0, 0);
    fill(200, 0, 0);
    textSize(50);
    text("¿no te gustaria\nque will\nsea feliz?", 50, 150);
    fill(200, 0, 0,x);
    text("cuidado con lo que deseas", x1+50, 300);
    x1-=(1)%4;
  }
  if (frameCount > 800) {
    image (will4, 0, 0);
    image (boton, 50, 300, 70, 70);
    fill(200, 0, 0);
    textSize(50);
    text("ESPLENDIDO!!'\nahora will\nes feliz", 50, 150);
    fill(200, 0, 0,random(0,200));
    textSize(30);
    text("(Hacer feliz de nuevo)", 150, 350);
    x1-=(1);
  }
}

void mousePressed() {
  if (frameCount > 800 && mouseX > 50 && mouseY > 300 && mouseX <120 && mouseY <370) {
    frameCount = 0;
  }
}
