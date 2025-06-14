// Oriana Betsabé Capurro, tp3, comisión 3

// https://www.youtube.com/watch?v=rrT7blfB_og
// Mil disculpas de que el tiempo esté en el límite que nos dijiste, es que quería poder explicar TODO

// Variables
PImage img;
int numCuadrados = 40; // Cuadrados
float tamanoInicial = 700; // Tamaño inicial
boolean coloresInvertidos = false;
float centroX = 600; // Centro del lado derecho
float centroY = 200;
int tiempoAnterior = 0; // Para controlar el cambio automático de colores

void setup() {
  size(800, 400);
  img = loadImage("F_48.jpg"); // Cargar la imagen de referencia
  tiempoAnterior = millis(); // Inicia el tiempo
}

void draw() {
  background(255);
  
  // Cambio automático de colores cada 1.5 segundos
  if (millis() - tiempoAnterior > 1500) {
    coloresInvertidos = !coloresInvertidos;
    tiempoAnterior = millis();
  }
  
  // Dibujar patrón en el lado derecho
  dibujarPatron(centroX, centroY, numCuadrados);
  
  // Punto rojo
  fill(255, 0, 0);
  ellipse(centroX, centroY, 13, 13);
  
  // Solo mostrar la imagen
  mostrarImagen();
}

// Eventos de teclado
void keyPressed() {
  // Invertir colores
  if (key == ' ') {
    coloresInvertidos = !coloresInvertidos;
  }
  
  // Reiniciar programa
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
  
  // Flechas arriba y abajo
  if (keyCode == UP) {
    // Más cuadrados (máximo 60)
    if (numCuadrados < 60) {
      numCuadrados++;
    }
  }
  
  if (keyCode == DOWN) {
    // Menos cuadrados (mínimo 10)
    if (numCuadrados > 10) {
      numCuadrados--;
    }
  }
}

// Eventos de mouse
void mousePressed() {
  // Para detectar si el click está cerca de lo dibujado
  float distancia = dist(mouseX, mouseY, centroX, centroY);
  
  if (distancia < 200) {
    // Achicar el tamaño cada vez que hacés click
    tamanoInicial = tamanoInicial * 0.8; // Achique del tamaño actual
    
    // No dejar que se achique tanto
    if (tamanoInicial < 100) {
      tamanoInicial = 100;
    }
  }
}
