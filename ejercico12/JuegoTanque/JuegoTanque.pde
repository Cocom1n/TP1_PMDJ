PImage fondo;
Tank tanque;
Player jugador;
float contador;
ArrayList<Bullet> balas;

void setup(){
  size(500,500);
  imageMode(CENTER);
  this.fondo = loadImage("data/back.jpg");
  tanque = new Tank();
  jugador = new Player();
  balas = new ArrayList<Bullet>();
  contador = 0;
}

void draw(){
  image(fondo,width/2, height/2, width, height);
  tanque.display();
  jugador.display();
  
  //Calculo de la distancia entre el Tanque y el Jugador
  PVector posJugador = new PVector(mouseX, mouseY);
  PVector direccion = PVector.sub(posJugador, tanque.getPosicion()).normalize();
  PVector vectorDireccion = PVector.add(posJugador, direccion);
  line(tanque.getPosicion().x,tanque.getPosicion().y,vectorDireccion.x,vectorDireccion.y);
  
  tanque.detectarJugador(posJugador);
  
  if(tanque.getsePuedeDisparar() && contador<1){
    tanque.disparar(vectorDireccion);
    contador+=1;
  }
  
  for(int i = balas.size()-1; i >= 0; i--){
    Bullet b = balas.get(i);
    b.mover();
    b.display();
    if(b.getDestruir()){
      balas.remove(i);
      contador =0;
      println("destruido");
    }
  }
  
  
}
