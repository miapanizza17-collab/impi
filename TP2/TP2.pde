//Mia Panizza 127008/7
//se que no esta del todo bien pero queria entregarlo para saber si todavia puedo dar el recuperatorio
int estado = 0;
int contador = 0;
PImage imagen, imagen1, imagen2,imagen3,imagen4,imagen5,imagen6,imagen7,imagen8; 
PFont font;
float x = 50;         
float velocidad = 2;  
boolean moviendo = false;

float alfa = 0;             
int estadoSiguiente = 0;    
boolean transicionando = false; 
int tipoTransicion = 0; 
float transX = 0;       

float textoY = 650;          float textoDestinoY = 280;   float velocidadTexto = 4;    
float yoavY = 650;           float yoavDestinoY = 260;    float velocidadYoav = 4;     
float samY = 650;            float samDestinoY = 260;     float velocidadSam = 4;      
float guyY = 650;            float guyDestinoY = 260;     float velocidadGuy = 4;      
float thomasY = 650;         float thomasDestinoY = 260;  float velocidadThomas = 4;   
float orkoY = 650;           float orkoDestinoY = 260;    float velocidadOrko = 4;     

void setup() {
  size(640, 480);
  rectMode(CENTER); 
  imageMode(CENTER); 

  font = createFont("Impact", 48); 
  textFont(font, 32);
  
  imagen = loadImage("data/Ilustración.png"); 
  imagen1 = loadImage("data/imagen 1.png"); 
  imagen2 = loadImage("data/zero_one.jpg"); 
   
}

void draw() { 
 
  if (estado == 0)        dibujaPantallaDeInicio();
  else if (estado == 1)   dibujaPantalla1();
  else if (estado == 2)   dibujaPantallaYoav();
  else if (estado == 3)   dibujaPantallaSam();
  else if (estado == 4)   dibujaPantallaGuy();
  else if (estado == 5)   dibujaPantallaThomas();
  else if (estado == 6)   dibujaPantallaOrko();
  else if (estado == 7)   dibujaPantallaFinal();

 
  if (transicionando) {
    ejecutarTransicionVisual();
  }
}

void iniciarTransicion(int destino, int tipo) {
  transicionando = true;
  estadoSiguiente = destino;
  tipoTransicion = tipo;
  alfa = 0;
  transX = 0;
}

void resetearPosiciones() {
  textoY = 650; yoavY = 650; samY = 650; guyY = 650; thomasY = 650; orkoY = 650;
}

void ejecutarTransicionVisual() {
  if (tipoTransicion == 0) {
    rectMode(CORNER); fill(0, alfa); rect(0, 0, width, height); rectMode(CENTER);
    if (alfa < 255 && estadoSiguiente != estado) {
      alfa += 15;
    } else { 
      estado = estadoSiguiente; 
      contador = 0; 
      resetearPosiciones(); 
      alfa -= 15; 
      if (alfa <= 0) transicionando = false; 
    }
  }

  else if (tipoTransicion == 1) {
    rectMode(CORNER); fill(0); rect(0, 0, transX, height); rectMode(CENTER);
    if (transX < width && estadoSiguiente != estado) {
      transX += 32;
    } else { 
      estado = estadoSiguiente; 
      contador = 0; 
      resetearPosiciones(); 
      transX += 32; 
      if (transX >= width * 2) transicionando = false; 
    }
  }
  else if (tipoTransicion == 2) {
    rectMode(CORNER); fill(255, alfa); rect(0, 0, width, height); rectMode(CENTER);
    if (alfa < 255 && estadoSiguiente != estado) {
      alfa += 25;
    } else { 
      estado = estadoSiguiente; 
      contador = 0; 
      resetearPosiciones(); 
      alfa -= 25; 
      if (alfa <= 0) transicionando = false; 
    }
  }
  else if (tipoTransicion == 3) {
    rectMode(CORNER); fill(20); rect(0, 0, width, transX); rectMode(CENTER);
    if (transX < height && estadoSiguiente != estado) {
      transX += 24;
    } else { 
      estado = estadoSiguiente; 
      contador = 0;
      resetearPosiciones(); 
      transX += 24; 
      if (transX >= height * 2) transicionando = false; 
    }
  }
  else if (tipoTransicion == 4) {
    rectMode(CORNER); fill(0, 255, 255, alfa); rect(0, 0, width, height); rectMode(CENTER);
    if (alfa < 255 && estadoSiguiente != estado) {
      alfa += 20;
    } else { 
      estado = estadoSiguiente; 
      contador = 0;
      resetearPosiciones(); 
      alfa -= 20; 
      if (alfa <= 0) transicionando = false; 
    }
  }
  else if (tipoTransicion == 5) {
    rectMode(CORNER); fill(10, 10, 20); rect(width - transX, 0, width, height); rectMode(CENTER);
    if (transX < width && estadoSiguiente != estado) {
      transX += 32;
    } else { 
      estado = estadoSiguiente; 
      contador = 0; // CORRECCIÓN
      resetearPosiciones(); 
      transX += 32; 
      if (transX >= width * 2) transicionando = false; 
    }
  }
  else if (tipoTransicion == 6) {
    rectMode(CORNER); fill(255, 50, 50, alfa); rect(0, 0, width, height); rectMode(CENTER);
    if (alfa < 255 && estadoSiguiente != estado) {
      alfa += 15;
    } else { 
      estado = estadoSiguiente; 
      contador = 0;
      resetearPosiciones(); 
      alfa -= 15; 
      if (alfa <= 0) transicionando = false; 
    }
  }
}

void mousePressed() {
  if (!transicionando) {
    if (estado == 0 && mouseSobreRectangulo(320, 340, 155, 58)) {
      moviendo = true; iniciarTransicion(1, 0); 
    }
    else if (estado == 7 && mouseSobreRectangulo(320, 300, 200, 60)) {
      iniciarTransicion(0, 6); 
    }
  }
}

boolean mouseSobreRectangulo(float X_, float Y_, float ancho_, float alto_) {
  return (mouseX > X_ - ancho_/2 && mouseX < X_ + ancho_/2 && mouseY > Y_ - alto_/2 && mouseY < Y_ + alto_/2);
}
