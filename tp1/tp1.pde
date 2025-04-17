PImage img;
void setup() {
  
  size(800, 400); // Tamaño del lienzo
  background (242, 170, 135); // Color de fondo (lo hice un poco más naranja de lo que debería para que no sea tan parecido al color de piel y no se confunda)
  img = loadImage("imagen.jpg"); // Para cargar la imagen
  img.resize(0, 400); // Cambia el alto a 400 y ajusta el ancho sin que se deforme
  image(img, 100, 0); // Imagen al lado izquierdo
}

void draw() {
  println(mouseX, mouseY); // Coordenadas del mouse

  // Pelo
  fill(0); //
  beginShape();
  vertex(440, 235); 
  vertex(450, 60); 
  bezierVertex(470, 10, 530, 10, 550, 60); 
  vertex(560, 235); 
  vertex(500, 235); 
  vertex(440, 235); 
  endShape(CLOSE);

  // Color de piel
  fill (247, 231, 222);
  
  // Cabeza
  ellipse (500, 100, 100, 125);
  
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
  line(500, 100, 500, 110);
  arc(500, 112, 10, 5, 0, PI);
  noStroke();
  
  // Boca
  stroke(180, 60, 60);
  strokeWeight(4);
  line(487, 130, 514, 130);
  noStroke();
 
  // Mechones
  stroke(0);
  strokeWeight(2);
  fill(0);
  curve(496, 10, 496, 36, 452, 79, 400, 50);
  curve(504, 10, 504, 36, 548, 79, 600, 50);
  
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
  
  // Pequeños rellenitos extra del flequillo
  ellipse(511, 40, 7, 7);
  ellipse(457, 72, 8, 8);
  
  // Hombros/Torso
  noStroke();
  fill(247, 231, 222);
  rect(455, 170, 95, 120);
  
  // Remera
  noStroke();
  fill(0);
  rect(472.5, 170, 60, 120);
  
  // Cuello
  noStroke();
  fill(247, 231, 222);
  rect(490, 150, 22, 20);
  
}
