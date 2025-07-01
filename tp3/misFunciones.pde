// Función 1: (No retorna valor) Dibuja el patrón completo
void dibujarPatron(float x, float y, int cantidad) {
  push();
  translate(x, y);
  rotate(PI/4); // Rotar 45 grados
  
  // Ciclos for anidados para el patrón
  for (int i = 0; i < cantidad; i++) {
    for (int j = 0; j < 2; j++) {
      
      float factor = (j == 0) ? 1.0 : 0.7;
      float tamano = calcularTamano(i, cantidad) * factor;
      
      // Determinar color con condicional (usando i y j)
      if ((i + j) % 2 == 0) {
        if (coloresInvertidos) {
          fill(255); // Blanco
        } else {
          fill(0); // Negro
        }
      } else {
        if (coloresInvertidos) {
          fill(0); // Negro
        } else {
          fill(255); // Blanco
        }
      }
      
      if (j == 0) {
        // Primera iteración: cuadrado más grande
        noStroke();
        rectMode(CENTER);
        rect(0, 0, tamano, tamano);
      } else {
        // Segunda iteración: cuadrado más chico encima
        noStroke();
        rectMode(CENTER);
        rect(0, 0, tamano, tamano);
      }
    }
  }
  pop();
}

// Función 2: (Retorna valor) Calcula el tamaño de cada cuadrado
float calcularTamano(int indice, int total) {
  // map() para reducir tamaño gradualmente desde muy grande hasta muy chico
  return map(indice, 0, total-1, tamanoInicial, 3);
}

// Función 3: (No retorna valor) Muestra solo la imagen
void mostrarImagen() {
  image(img, 0, 0, 400, 400);
}

// Función 4: (No retorna valor) Reinicia
void reiniciar() {
  numCuadrados = 40; // Vuelve al estado inicial con muchos cuadrados
  tamanoInicial = 700; // Tamaño inicial MUY grande
  coloresInvertidos = false;
  tiempoAnterior = millis(); // Reinicia el tiempo también
}
