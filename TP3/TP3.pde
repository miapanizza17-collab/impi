//Mia Panizza 127008/7
//link video :https://youtu.be/2iiur7UMYJs
PImage obra; 
float cant = 9; 
float r = 40;
float g = 40;
float b = 40;
float anguloBase = 0;

void setup() { 
  size(800, 400); 
  obra = loadImage("11.jpg"); 
} 

void draw() { 
  image(obra, 0, 0, 400, 400); 
  
  for(int j=0; j<cant ; j++){ 
    for (int i=0 ; i<cant ; i++){ 
      if ((i+j)%2 == 0){ 
        fill(r, g, b); 
      } else { 
        fill(255);
      } 
      rect(400+(400/cant)*i, 400/cant*j, 400/cant, 400/cant ); 
    }
  }
  
  anguloBase = map(mouseX, 0, width, 0, 30);
  
  fill(255); stroke(0); 
  for (int y = 0; y <= 400; y++) {
    for (int x = 400; x <= 800; x++) {
      
      if ((x == 400 && (y == 33 || y == 123 || y == 266 || y == 356)) ||
          (x == 434 && (y == 33 || y == 0 || y == 123 || y == 266 || y == 356 || y == 390)) ||
          (x == 523 && (y == 33 || y == 0 || y == 177 || y == 212)) ||
          (x == 524 && (y == 356 || y == 390)) ||
          (x == 444 && (y == 44 || y == 133 || y == 256 || y == 345)) ||
          (x == 478 && (y == 78 || y == 167 || y == 222 || y == 311)) ||
          (x == 533 && (y == 44 || y == 167 || y == 222 || y == 345)) ||
          (x == 567 && (y == 78 || y == 133 || y == 256 || y == 311)) ||
          (x == 488 && (y == 88 || y == 177 || y == 212 || y == 301)) ||
          (x == 577 && (y == 88 || y == 123 || y == 266 || y == 301)) ||
          (x == 612 && (y == 88 || y == 123 || y == 266 || y == 301)) ||
          (x == 666 && (y == 177 || y == 212 || y == 0 || y == 33 || y == 356 || y == 390)) ||
          (x == 701 && (y == 177 || y == 212 || y == 88 || y == 301)) ||
          (x == 656 && (y == 222 || y == 167 || y == 44 || y == 345)) ||
          (x == 622 && (y == 256 || y == 133 || y == 77 || y == 312)) ||
          (x == 756 && (y == 33 || y == 0 || y == 122 || y == 356 || y == 390 || y == 266)) ||
          (x == 790 && (y == 33 || y == 122 || y == 356 || y == 266)) ||
          (x == 712 && (y == 77 || y == 312 || y == 222)) ||
          (x == 746 && (y == 44 || y == 133)) ||
          (x == 711 && (y == 167)) ||
          (x == 745 && (y == 345 || y == 256))) {
            
        rotacionSobreEje(x, y, direccionRotacion(x, y));
      }
    }
  }
}
float direccionRotacion(int posX, int posY) {
  dist(mouseX, mouseY, posX, posY);
  return anguloBase;
}

void rotacionSobreEje(int posX, int posY, float angulo) {
  pushMatrix();
  translate(posX + 5, posY + 5); 
  rotate(angulo);
  rect(-5, -5, 10, 10);
  popMatrix();
}

void mousePressed() {
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    r = random(255);
    g = random(255);
    b = random(255);
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    r = 40;
    g = 40;
    b = 40;
    anguloBase = 0;
  }
}
