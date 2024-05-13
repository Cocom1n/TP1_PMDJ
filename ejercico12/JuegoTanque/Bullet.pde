class Bullet extends GameObject{
  
  private PVector direccion;
  
  public Bullet(PVector dd){
    setPosicion(new PVector(width/2, height/2));
    this.Image = loadImage("data/bullet.png");
    setTamanio(new PVector(35, 35));
    setVelocidad(1);
    setDestruir(false);
    this.direccion=dd;
  }
  
  public void display(){
    image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y);
  }
  
  public void mover(){
     getPosicion().add(PVector.mult(direccion, getVelocidad()));
     println(getPosicion());
    //getPosicion().x+= getVelocidad();
    if(getPosicion().x >= width || getPosicion().x <= 0 || getPosicion().y >= height || getPosicion().y <=0 ){
      setDestruir(true);
    }
  }
}
