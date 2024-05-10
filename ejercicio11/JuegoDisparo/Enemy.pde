class Enemy extends GameObject{

  public Enemy(){
    setPosicion(new PVector(width/3,height/2));
    this.Image = loadImage("data/enemy.png");
    setTamanio(new PVector(50, 50));
  }
  
  public void display(){
    image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y); 
  }
  
  public void disparar(){
    Bala nuevaBala = new Bala();
    balas.add(nuevaBala);
  }
}
