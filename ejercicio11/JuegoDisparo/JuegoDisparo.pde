Enemy enemigo;
Jugador player;
Bala bala;
PImage fondo;

public void setup(){
  size(500,500);
  imageMode(CENTER);
  enemigo = new Enemy();
  player = new Jugador();
  bala = new Bala();
  this.fondo = loadImage("data/fondo.jpg");
}

public void draw(){
  background(0);
  image(fondo,width/2, height/2, width, height);
  enemigo.display();
  player.display();
  bala.display();

}
