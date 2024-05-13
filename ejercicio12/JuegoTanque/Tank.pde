class Tank extends GameObject{
  
  float rango = 200;
  boolean esDetectado =false;
  
  public Tank(){
    setPosicion(new PVector(0,0));
    this.Image = loadImage("data/tank.png");
    setTamanio(new PVector(55, 55));
  }
  
  public void display(){
    noFill ();
    ellipse(getPosicion().x,getPosicion().y,rango*2,rango*2);
    image(Image,getPosicion().x,getPosicion().y,50,50); 
  }
  
  public void detectarJugador(PVector target) { 
    float distancia = PVector.dist(new PVector(width/2, height/2), target);
  
    if (distancia < rango) {
      esDetectado=true;
      println("Jugador detectado");
    } else {
      esDetectado=false;
      println("Jugador fuera de rango");
    }  
  }

  public void disparar(){
      Bullet nuevaBala =new Bullet(); 
      balas.add(nuevaBala);
  }
  
  public boolean getsePuedeDisparar() { 
    return this.esDetectado; 
  }
}
