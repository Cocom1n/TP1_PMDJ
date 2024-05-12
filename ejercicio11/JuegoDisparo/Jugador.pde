class Jugador extends GameObject{
  
  public Jugador(){
    this.Image = loadImage("data/player.png");
    setTamanio(new PVector(50, 50));
    setPosicion(new PVector(mouseX, mouseY));
  }
  
  public void display(){
    image(Image, mouseX, mouseY, getTamanio().x, getTamanio().y); 
    //image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y);
  }
}
