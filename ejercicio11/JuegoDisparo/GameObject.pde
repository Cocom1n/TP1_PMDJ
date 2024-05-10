abstract class GameObject{

  protected PVector posicion;
  protected float velocidad;
  protected PVector tamanio;
  protected PImage Image;



  public PVector getPosicion() { 
    return this.posicion; 
  }
  public void setPosicion(PVector p) { 
    this.posicion = p; 
  }
  
/** VELOCIDAD */
    public float getVelocidad() { 
    return this.velocidad; 
  }

  public void setVelocidad(float velocidad) { 
    this.velocidad=velocidad; 
  }
  
/** TAMANIO */
  public PVector getTamanio(){ 
    return this.tamanio; 
  }
  public void setTamanio(PVector tamanio){ 
    this.tamanio = tamanio; 
  }
  
}
