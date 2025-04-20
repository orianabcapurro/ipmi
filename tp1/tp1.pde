PImage img;
void setup() {
  size(800, 400); // Tamaño del lienzo
  background(222, 204, 184, 255); // Color de fondo
  img = loadImage("imagen.jpg"); // Para cargar la imagen
  img.resize(0, 400); // Cambia el alto a 400 y ajusta el ancho sin que se deforme
  image(img, 100, 0);  // Para centrar la imagen en la mitad izquierda

}
void draw() {
  println(mouseX, mouseY); // Coordenadas del mouse
  
  translate(100, 6); // Mueve 100 píxeles a la derecha y 6 píxeles hacia abajo todo el dibujo
  
  // Pelo
  fill(0);
  beginShape();
  vertex(432, 235);
  vertex(442, 60);
  bezierVertex(470, 5, 530, 5, 558, 60);
  vertex(568, 235);
  vertex(500, 235); 
  vertex(432, 235); 
  endShape(CLOSE);
  
  // Color de piel
  fill(247, 231, 222);
  
  // Cabeza
  ellipse(500, 100, 100, 125);
  
  // Ojos
  fill(255); // Fondo de ojo
  ellipse(480, 90, 20, 15); // Ojo izquierdo
  
  fill(93, 49, 3); // Color
  ellipse(480, 90, 8, 8); // Pupila izquierda
  
  // Brillito de pupila izquierda
  fill(255);
  ellipse(479, 87, 3, 3);
  
  // Pestañas ojo izquierdo
  stroke(0);
  strokeWeight(1.5);
  line(473, 83, 470, 80); // pestaña 1
  line(480, 82, 480, 78); // pestaña 2
  line(487, 83, 490, 80); // pestaña 3
  noStroke();
  
  fill(255); // Fondo de ojo
  ellipse(520, 90, 20, 15); // Ojo derecho
  
  fill(93, 49, 3); // Color de pupila
  ellipse(520, 90, 8, 8); // Pupila derecha
  
  //Brillito de pupila derecha
  fill(255);
  ellipse(519, 87, 3, 3);
  
  // Pestañas ojo derecho
  stroke(0);
  strokeWeight(1.5);
  line(513, 83, 510, 80); // pestaña 1
  line(520, 82, 520, 78); // pestaña 2
  line(527, 83, 530, 80); // pestaña 3
  
  // Cejas
  stroke(0);
  line(470, 75, 490, 75); // Ceja izquierda
  line(510, 75, 530, 75); // Ceja derecha
  
  // Nariz
  stroke(150, 100, 90);
  strokeWeight(1.5);
  line(500, 100, 500, 116);
  arc(500, 118, 10, 5, 0, PI);
  noStroke();
  
  // Septum (piercing)
  stroke(80);
  strokeWeight(1.2);
  noFill();
  arc(500, 122, 8, 5, PI, TWO_PI);  // Para voltear el piercing
  noStroke();

  // Labios
  noStroke();
  fill(215, 145, 145);

  // Labio de arriba
  beginShape();
  vertex(483, 132);
  bezierVertex(495, 129, 505, 129, 517, 132);
  endShape(CLOSE);
  
  // Labio de abajo
  beginShape();
  vertex(483, 132);
  bezierVertex(495, 142, 505, 142, 517, 132);
  endShape(CLOSE);
  
  // Línea de los labios
  stroke(195, 125, 125);
  strokeWeight(1);
  line(483, 132, 517, 132);
 
  // Flequillo
  stroke(0);
  strokeWeight(2);
  fill(0);
  curve(496, 10, 496, 36, 452, 79, 400, 50); // Mechón derecho
  curve(504, 10, 504, 36, 548, 79, 600, 50); // Mechón izquierdo
  
  // Relleno de mechones (óvalos)
  stroke(0);
  
  // Óvalo izquierdo
  pushMatrix();
  translate(475, 57);
  rotate(radians(-45));
  ellipse(0, 0, 50, 15);
  popMatrix();
  
  // Óvalo derecho
  pushMatrix();
  translate(532, 57);
  rotate(radians(45));
  ellipse(0, 0, 50, 15);
  popMatrix();
  
  // Pequeños rellenitos del flequillo
  ellipse(511, 40, 7, 7);
  ellipse(457, 72, 8, 8);
  
  // Hombros/brazos
  noStroke();
  fill(247, 231, 222);
  rect(445, 190, 115, 180); 
  
  // Remera
  noStroke();
  fill(0);
  rect(462.5, 190, 80, 180); 
  
  // Cuello
  noStroke();
  fill(247, 231, 222);
  rect(490, 160, 22, 25); 
  
}
