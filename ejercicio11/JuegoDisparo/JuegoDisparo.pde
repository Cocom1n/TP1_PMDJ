Enemy enemigo;
Jugador player;
PImage fondo;
ArrayList<Bala> balas;
float contador;

public void setup(){
  size(500,500);
  imageMode(CENTER);
  enemigo = new Enemy();
  player = new Jugador();
  this.fondo = loadImage("data/fondo.jpg");
  balas = new ArrayList<Bala>();
  contador = 0;
}

public void draw(){
  background(0);
  image(fondo,width/2, height/2, width, height);
  enemigo.display();
  player.display();
  
  PVector a = new PVector(mouseX, mouseY);
  PVector direccion = PVector.sub(a, enemigo.getPosicion());
  float angulo = PVector.angleBetween(direccion, new PVector(1, 0));
  stroke(255);
  line(enemigo.getPosicion().x,enemigo.getPosicion().y,a.x,a.y);
  
  if (angulo < radians(30) && angulo > -radians(30) && contador<1) {
    enemigo.disparar();
    println("Dentro del campo de vision");
    contador+=1;
  }

  for (int i = balas.size()-1; i >= 0; i--) {
    Bala b = balas.get(i);
    b.mover();
    b.display();
    if (b.getDestruir()) {
      balas.remove(i);
      contador=0;
      println("destruido");
    }
  }
}
