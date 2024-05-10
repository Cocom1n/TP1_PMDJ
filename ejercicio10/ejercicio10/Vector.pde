class Vector{
  PVector origen;
  PVector destino;
  PVector suma;
  PVector resta;
  
  public Vector(){
    origen = new PVector();
    destino = new PVector();
  }
  
  public Vector(PVector o, PVector d){
    this.origen=o;
    this.destino=d;
  }
  public void display(){
    line(origen.x, origen.y, destino.x, destino.y);
  }
  
  public PVector sumar(PVector vector1, PVector vector2){
    return PVector.add(vector1, vector2);
  }
  
  public PVector resta(PVector vector1, PVector vector2){
    return PVector.sub(vector1, vector2);
  }
  
  /*
   PVector getDestino(){
    return this.destino;
  }
  
  PVector getOrigen(){
    return this.origen;
  }*/

}
