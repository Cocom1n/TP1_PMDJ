class Bullet extends GameObject{
  
  public Bullet(){
    setPosicion(new PVector(width/2, height/2));
    this.Image = loadImage("data/bullet.png");
    setTamanio(new PVector(35, 35));
    setVelocidad(5);
    setDestruir(false);
  }
  
  public void display(){
    image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y);
  }
  
  public void mover(){
    getPosicion().x+= getVelocidad();
    if(getPosicion().x >= width || getPosicion().x <= 0 || getPosicion().y >= height || getPosicion().y <=0 ){
      setDestruir(true);
    }
  }
}
