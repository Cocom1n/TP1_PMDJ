class Player extends GameObject{
  
  public Player(){
    this.Image = loadImage("data/player.png");
    setTamanio(new PVector(45, 45));
    setPosicion(new PVector(mouseX, mouseY));
  }
  
  public void display(){
    image(Image, mouseX, mouseY, getTamanio().x, getTamanio().y); 
  }
}
