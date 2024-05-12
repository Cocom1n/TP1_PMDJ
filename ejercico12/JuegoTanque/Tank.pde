class Tank extends GameObject{
  
  float rango = 125;
  boolean esDetectado =false;
  
  public Tank(){
    setPosicion(new PVector(width/2,height/2));
    this.Image = loadImage("data/tank.png");
    setTamanio(new PVector(55, 55));
  }
  
  public void display(){
    ellipse(width/2,height/2,rango*2,rango*2);
    image(Image, getPosicion().x, getPosicion().y, getTamanio().x, getTamanio().y); 
  }
  
  public void detectarJugador(PVector target) { 
    float distancia = PVector.dist(getPosicion(), target);
  
    if (distancia < rango) {
      esDetectado=true;
      println(esDetectado);
    } else {
      esDetectado=false;
      println(esDetectado);
    }  
  }
  
  public void disparar(PVector d){
      Bullet nuevaBala =new Bullet(); 
      balas.add(nuevaBala);
  }
  
  public boolean getsePuedeDisparar() { 
    return this.esDetectado; 
  }
}
