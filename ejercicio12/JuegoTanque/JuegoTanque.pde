PImage fondo;
Tank tanque;
Player jugador;
ArrayList<Bullet> balas;
float contador;
PVector posJugador;

void setup() {
  size(500, 500);
  imageMode(CENTER);
  this.fondo = loadImage("data/back.jpg");
  tanque = new Tank();
  jugador = new Player();
  balas = new ArrayList<Bullet>();
  contador = 0;
  posJugador = new PVector(0, 0); // Posición objetivo
}

void draw() {
  image(fondo,width/2, height/2, width, height);
  

  float angle = atan2(posJugador.y - height/2, posJugador.x - width/2);
  //println(angle);
  
  pushMatrix();
  translate(width/2, height/2);
  if(tanque.getsePuedeDisparar()){
    rotate(angle);
  }
  tanque.display();
  popMatrix();
  jugador.display();
  
  //Calculo de la distancia entre el Tanque y el Jugador
  PVector direccion = PVector.sub(posJugador, tanque.getPosicion()).normalize();
  PVector vectorDireccion = PVector.add(posJugador, direccion);
  line(width/2, height/2,vectorDireccion.x,vectorDireccion.y);
  
  tanque.detectarJugador(posJugador);
  
  if(tanque.getsePuedeDisparar() && contador<1){
    tanque.disparar();
    contador+=1;
  }
  
  for(int i = balas.size()-1; i >= 0; i--){
    Bullet b = balas.get(i);
    b.mover();
    b.display();
    if(b.getDestruir()){
      balas.remove(i);
      contador =0;
    }
  }
}

void mouseMoved() {
  posJugador.set(mouseX, mouseY);
}
