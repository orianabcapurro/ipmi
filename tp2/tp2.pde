// Oriana Betsabé Capurro, tp2, comisión 3

PFont miFuente;
int numPantalla;
int contadorTiempo;
PImage imagen1, imagen2, imagen3; // Variables para las imágenes
  
void setup(){
  size(640,480);
  numPantalla = 0;
  contadorTiempo = 0;
  frameRate(30);
  miFuente = createFont("LGGothic.ttf",48);
  textFont(miFuente);
  
  // Cargar las imágenes
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
}

  void draw (){
  background (255);
  if (numPantalla == 0) {
   
  // Pantalla 0
  image(imagen1, 0, 0, width, height);
  float opacidad = map(contadorTiempo, 0, 100, 0, 255);
  fill(209, 38, 38, opacidad);
  textAlign(CENTER,CENTER);
  textSize(24);
  float y = map(contadorTiempo, 0, 100, 0, 140);
  text("Tango Virus es una instalación interactiva que\nexplora sistemas adaptativos aplicados al tango, \nsimulando procesos virales y respuestas inmunológicas\n mediante vida artificial. El público interviene en \ntiempo real, transformando la música con sus \nmovimientos al bailar.",width/2,y);
  }
  
  else if (numPantalla == 1) {
  // Pantalla 1
  image(imagen2, 0, 0, width, height);
  float opacidad = map(contadorTiempo, 0, 150, 0, 500);
  float y = map(contadorTiempo, 0, 60, height/2, height/2-140);
  fill(209, 38, 38, opacidad);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("El sistema musical intenta defenderse con un mecanismo \ninmunológico simulado. Si resiste, desarrolla 'anticuerpos'\n y se vuelve resiliente. Si es atacado repetidamente, \ncolapsa y 'muere'.",width/2,y);
  }
  
  else if (numPantalla == 2) {
  // Pantalla 2
  image(imagen3, 0, 0, width, height);
  float opacidad = map(contadorTiempo, 0, 150, 0, 255);
  fill(209, 38, 38, opacidad);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Autor: Emiliano Causa, 2005",width/2,height/2);
  }
  
  else if (numPantalla == 3) {
  // Pantalla 3 (botón de reinicio)
  background(82,47,93);
  float distancia = dist(width/2, height/2, mouseX, mouseY);
  if (distancia < 50) {
  fill(209, 38, 38); // Rojo cuando el mouse está sobre el botón
  } else {
  fill(200); // Gris cuando el mouse no está sobre el botón
  }
  ellipse(width/2, height/2, 100, 100);
    
  fill(0);
  textSize(17);
  text("REINICIAR", width/2, height/2);
}


  // Contador para aumentar el numPantalla
  contadorTiempo++;
  if (contadorTiempo>150){
  contadorTiempo = 0;
  
  numPantalla++;
   if (numPantalla>2) {
  numPantalla = 0;
  }
 }
}

void mousePressed() {
  if (numPantalla == 3) {
  float distancia = dist(width/2, height/2, mouseX, mouseY);
  if (distancia < 50) {
  numPantalla = 0; // Reiniciar
  contadorTiempo = 0;
  }
} else {
  // Para las otras pantallas
  numPantalla++;
  contadorTiempo = 0;
  if (numPantalla > 3) {
   numPantalla = 0;
   }
 }
}
