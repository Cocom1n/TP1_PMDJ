class Bala extends GameObject{
  
  public Bala(){
    setPosicion(new PVector(width/3,height/2));
    this.Image = loadImage("data/bala.png");
    setTamanio(new PVector(50, 50));
  }
  
  public void display(){
    image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y); 
  }
}
