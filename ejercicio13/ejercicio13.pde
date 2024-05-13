PVector pos;
PVector velocidad;
PVector origen;

void setup(){
  size(500,500);
  pos = new PVector(50,90);
  velocidad = new PVector(12,7);
  origen = new PVector(width/2,height/2);
}

void draw(){
  background(200);
  pos.add(velocidad);
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  ellipse(origen.x,origen.y,15,15);
  
  if(pos.x>width-10 ||pos.x<0+10){
    velocidad.x = velocidad.x *-1;
  }
  if(pos.y>height-10 ||pos.y<0+10){
    velocidad.y = velocidad.y *-1;
  }
  ellipse(pos.x, pos.y,20,20);
}
