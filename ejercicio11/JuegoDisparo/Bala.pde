class Bala extends GameObject{
  private PVector direccion;
  
  public Bala(PVector direccion){
    setPosicion(new PVector(width/3, height/2));
    this.Image = loadImage("data/bala.png");
    setTamanio(new PVector(50, 50));
    setVelocidad(6);
    setDestruir(false);
    this.direccion = direccion;
  }
  
  public void display(){
    image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y); 
  }
  
  public void mover(){
    getPosicion().add(PVector.mult(direccion, getVelocidad()));
    
    if (getPosicion().x >= width){
      setDestruir(true);
    }
  }
}
