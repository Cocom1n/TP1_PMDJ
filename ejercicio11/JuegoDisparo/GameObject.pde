abstract class GameObject{

  protected PVector posicion;
  protected float velocidad;
  protected PVector tamanio;
  protected PImage Image;
  protected Boolean destruir;
  protected PVector direccion;
  protected float angulo;

  public PVector getPosicion() { 
    return this.posicion; 
  }
  public void setPosicion(PVector p) { 
    this.posicion = p; 
  }
  
    public float getVelocidad() { 
    return this.velocidad; 
  }

  public void setVelocidad(float velocidad) { 
    this.velocidad=velocidad; 
  }
  
  public PVector getTamanio(){ 
    return this.tamanio; 
  }
  public void setTamanio(PVector tamanio){ 
    this.tamanio = tamanio; 
  }
  
  public boolean getDestruir() {
    return destruir;
  }

  public void setDestruir(boolean valor) {
    destruir = valor;
  }
  
}
