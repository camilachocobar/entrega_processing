color fondo = color(24, 125, 137); //<>//
color cian = color(0, 0, 0);
int [] lineas = {55, 145, 185};
String [] textos = {"a Pelican Book                    3/6", "The Stagnant Society", "Michael Shanks"};
PFont normal, light;
PImage photo;
float a=1; 

int num = 50;
int[] x = new int[num];
int[] y = new int[num];
void setup() {
  size(400, 650);
  background(fondo);
  fill(255);
  normal = loadFont("HelveticaNeue-Bold-48.vlw");
  light=loadFont("HelveticaNeue-CondensedBold-48.vlw");
  photo = loadImage("pelicano3.png");

}



void draw() {
  fill(fondo);
  noStroke();
  rect(0, 0, width, lineas[2]);
  stroke(cian);
  fill(cian);
  image(photo, 10, 10, 30, 40);
  for (int x = 0; x < lineas.length; x++) {
    line(0, lineas[x], width, lineas[x]);
  }
  textFont(light);
  textSize(20);
  text(textos[0], 138, 25, 350, 30);
  textFont(normal);
  textSize(30);
  textLeading(38);
  text(textos[1], 57, 100, 350, 100);
  textSize(20);
  fill(255);
  text(textos[2], 125, 160, 220, 30);
  
   fill(random(0,300),150,150);
  if (mouseY == pmouseY || mouseX == pmouseX ) {
    rect(mouseX, mouseY, a, a);
    
    
  } else {
    
    rect(mouseX, mouseY, a, a);
    a = random(0,100);
  }
  
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("propuesta-#####.png");
  }
}
