
void dibujaPantallaDeInicio() {
  background(0);
  image(imagen, 320, 250, 640, 300); // Se eliminó la validación condicional
  
  fill(255); textSize(40); textAlign(CENTER, CENTER);
  text("The Living Tombstone", width * 0.5, height * 0.46); 
  if (mouseSobreRectangulo(320, 340, 155, 58)) fill(0, 255, 0); else fill(255, 180, 20); 
  rect(320, 340, 155, 58); fill(0); textSize(20); text("Iniciar", 320, 340);
}

void dibujaPantalla1() {
  background(0); 
  if (textoY > textoDestinoY) textoY -= velocidadTexto; else textoY = textoDestinoY; 
  
  image(imagen1, 320, textoY - 160, 200, 120); // Se eliminó la validación condicional
  
  fill(0,190,0); textSize(18); textAlign(CENTER, CENTER); 
  String parrafo = "The Living Tombstone (TLT) es un dúo de rock electrónico y pop originario de Los Ángeles, célebre por ser la banda musical más grande de la cultura digital y de los videojuegos. Fundado inicialmente en 2011 como un proyecto en solitario por el productor israelí-estadounidense Yoav Landau, el proyecto se consolidó en 2016 con la llegada del vocalista y compositor Sam Haft. El grupo es reconocido globalmente tanto por sus composiciones originales como por sus colosales éxitos virales basados en franquicias como Five Nights at Freddy's, My Little Pony y Overwatch.";
  text(parrafo, 320, textoY + 40, width - 100, height - 200); 
  
  contador++;
  if (contador >= 60 * 30 && !transicionando) iniciarTransicion(2, 1); 
}

void dibujaPantallaYoav() {
  background(40, 45, 70); 
  if (yoavY > yoavDestinoY) yoavY -= velocidadYoav; else yoavY = yoavDestinoY;
  
  // Imagen animada vinculada a yoavY (zero_one.jpg)
  image(imagen2, 320, yoavY - 160, 200, 120);
  
  fill(255, 180, 20); textSize(26); textAlign(CENTER, CENTER);
  text("zero_one / Yoav Landau", 320, yoavY - 80);
  fill(255); textSize(16);
  String bioYoav = "Yoav Landau es el genio fundador y productor principal detrás de TLT. Bajo el concepto conceptual y estético del álbum 'zero_one' (2020), representó la transición de la banda hacia la música independiente de estudio comercial. Él controla la mente maestra instrumental, programando los ritmos electrónicos pegajosos y sintetizadores pesados que componen la base sónica inconfundible de todo el catálogo del grupo.";
  text(bioYoav, 320, yoavY + 40, width - 120, height - 220);
  
  contador++;
  if (contador >= 60 * 15 && !transicionando) iniciarTransicion(3, 2); 
}

void dibujaPantallaSam() {
  background(65, 35, 45); 
  if (samY > samDestinoY) samY -= velocidadSam; else samY = samDestinoY;
  
  
  fill(255, 100, 100); textSize(26); textAlign(CENTER, CENTER);
  text("Rust / Sam Haft", 320, samY - 80);
  fill(255); textSize(16);
  String bioSam = "Sam Haft se unió oficialmente al proyecto en 2016 como el vocalista principal, letrista y co-compositor. Su llegada guio al grupo hacia un estilo de pop rock audaz, consolidándose de manera madura e industrial en su más reciente álbum 'Rust' (2025). Sam aporta la presencia escénica, las poderosas líneas vocales y la profundidad narrativa en las letras de las canciones.";
  text(bioSam, 320, samY + 40, width - 120, height - 220);
  
  contador++;
  if (contador >= 60 * 15 && !transicionando) iniciarTransicion(4, 3); 
}

void dibujaPantallaGuy() {
  background(30, 60, 50); 
  if (guyY > guyDestinoY) guyY -= velocidadGuy; else guyY = guyDestinoY;

  
  fill(50, 255, 150); textSize(26); textAlign(CENTER, CENTER);
  text("Tesla / Guy Bernfeld", 320, guyY - 80);
  fill(255); textSize(16);
  String bioGuy = "Guy Bernfeld es el bajista recurrentes de sesión en estudio y pieza fundamental en vivo bajo la identidad de la Tombsona 'Tesla'. Su destreza instrumental con el bajo eléctrico aportó las líneas de groove orgánico más aclamadas de la banda, presentes de manera notoria en grabaciones de estudio y en la potencia rítmica durante sus giras mundiales.";
  text(bioGuy, 320, guyY + 40, width - 120, height - 220);
  
  contador++;
  if (contador >= 60 * 15 && !transicionando) iniciarTransicion(5, 4); 
}

void dibujaPantallaThomas() {
  background(60, 55, 30); 
  if (thomasY > thomasDestinoY) thomasY -= velocidadThomas; else thomasY = thomasDestinoY;

  fill(255, 220, 100); textSize(26); textAlign(CENTER, CENTER);
  text("Doc / Thomas Silvers", 320, thomasY - 80);
  fill(255); textSize(16);
  String bioThomas = "Thomas Silvers es el dinámico baterista encargado de los ritmos y percusiones en los conciertos mundiales del dúo, portando la Tombsona visual apodada 'Doc'. Su ejecución enérgica y precisa traslada las complejas secuencias electrónicas digitales de los archivos de audio de Yoav a una experiencia de rock totalmente potente y orgánica en vivo.";
  text(bioThomas, 320, thomasY + 40, width - 120, height - 220);
  
  contador++;
  if (contador >= 60 * 15 && !transicionando) iniciarTransicion(6, 5); 
}

void dibujaPantallaOrko() {
  background(50, 30, 60); 
  if (orkoY > orkoDestinoY) orkoY -= velocidadOrko; else orkoY = orkoDestinoY;

  
  fill(200, 100, 255); textSize(26); textAlign(CENTER, CENTER);
  text("Armstrong / Orko Cohen", 320, orkoY - 80);
  fill(255); textSize(16);
  String bioOrko = "Orko Cohen, encarnando la Tombsona de guitarra eléctrica conocida como 'Armstrong', es un asociado veterano en el estudio y los escenarios. Sus explosivos e intrincados riffs de guitarra inyectaron ese característico sonido cyber-punk / metal alternativo a pistas que inicialmente nacieron como piezas puramente electrónicas nativas de internet.";
  text(bioOrko, 320, orkoY + 40, width - 120, height - 220);
  
  contador++;
  if (contador >= 60 * 15 && !transicionando) iniciarTransicion(7, 6); 
}

void dibujaPantallaFinal() {
  background(20, 20, 35);
  
  if (mouseSobreRectangulo(320, 300, 200, 60)) fill(255, 180, 20); else fill(255);
  rect(320, 300, 200, 60, 10); 
  
  fill(0); textSize(22);
  text("Volver al Inicio", 320, 300);
}
