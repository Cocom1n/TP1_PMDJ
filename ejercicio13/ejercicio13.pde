PVector posSonido;
PVector velocidad;
PVector jugador;

void setup(){
  size(500,500);
  posSonido = new PVector(50,90);
  velocidad = new PVector(11,7);
  jugador = new PVector(width/2,height/2);
}

void draw(){
  background(255);
  posSonido.add(velocidad);
  
  PVector direccion = PVector.sub(posSonido, jugador).normalize();
  PVector vector = PVector.add(posSonido, direccion);
  PVector aux = new PVector(1, 0);
  float productoPunto = PVector.dot(direccion, aux);
  
  if(posSonido.x>width-10 ||posSonido.x<0+10){
    velocidad.x = velocidad.x *-1;
  }
  if(posSonido.y>height-10 ||posSonido.y<0+10){
    velocidad.y = velocidad.y *-1;
  }
  
  //pinta el espacio en el que se encuentra el circulo movil
    fill(220, 220, 252);
  if(productoPunto>=0 && posSonido.y<height/2){
    rect(width/2,0,width/2,height/2);
  }
  if(productoPunto>=0 && posSonido.y>height/2){
    rect(width/2,height/2,width/2,height/2);
  }
  if(productoPunto<=0 && posSonido.y<height/2){
    rect(0,0,width/2,height/2);
  }
  if(productoPunto<=0 && posSonido.y>height/2){
    rect(0,height/2,width/2,height/2);
  }
  
  fill(63, 62, 105);
  textSize(25);
  text(productoPunto,30,470);
  line(jugador.x,jugador.y, vector.x,vector.y); //vector que apunta desde el centro al 
  
  
  //dibujo del eje y el centro
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  ellipse(jugador.x,jugador.y,10,10);
 
  //circulo que se mueve
  fill(255);
  ellipse(posSonido.x, posSonido.y,20,20);
}
