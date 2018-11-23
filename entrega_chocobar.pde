color fondo = color(230, 207, 186);
color cian = color(0, 0, 0);
int [] lineas = {55, 145, 185};
String [] textos = {"a Pelican Book", "Self\nand Others", "R. D. Laing"};
PFont normal, light;
color rojo = color(225, 10, 33);
color rosao = color(227, 130, 131);
color verde = color(54, 124, 108);
int r;
PImage photo;


void setup() {
  size(400, 650);
  background(fondo);
  normal = loadFont("GrotesqueMT-Bold-48.vlw");
  light = loadFont("GrotesqueMT-48.vlw");
  photo = loadImage("pelicano3.png");
}

void draw() {
  fill(fondo);
  noStroke();
  rect(0, 0, width, lineas[2]);
  image(photo, 20, 20, 40, 50);
  stroke(cian);
  fill(cian);

  textFont(light);
  textSize(20);
  text(textos[0], 130, 20, 220, 30);
  textFont(normal);
  textSize(40);
  textLeading(38);
  text(textos[1], 130, 65, 250, 200);
  textSize(20);
  text(textos[2], 130, 170, 220, 30);

  //desde aquí el dibujo
  if (mouseY > 200) {
    noStroke(); 
    int a = round(random(1, 3));
    print (a);
    if (a == 1) {
      fill(rojo);
      r = 15;
    } else if (a == 2) {
      fill(rosao);
      r = 25;
    } else {
      fill(verde);
      r = 35;
    }


    ellipse(mouseX, mouseY, r, r);
  }
}
void keyPressed() {
  if (key == 'p') {
    saveFrame("propuesta-######.png");
  }
}
