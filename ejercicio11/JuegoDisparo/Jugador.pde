class Jugador extends GameObject{
  
  public Jugador(){
    this.Image = loadImage("data/player.png");
    setTamanio(new PVector(50, 50));
  }
  
  public void display(){
    image(Image, mouseX, mouseY, getTamanio().x, getTamanio().y); 
  }
}
