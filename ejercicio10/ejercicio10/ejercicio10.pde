private PVector puntoA;
private PVector puntoB;
private PVector puntoC;
private PVector puntoD;
private Vector ab;
private Vector bc;
private Vector cd;
private Vector da;


public void setup(){
  size(300,300);
  puntoA = new PVector(-10,-20);
  puntoB = new PVector(40,-10);
  puntoC = new PVector(50,20);
  
  ab = new Vector(new PVector(puntoA.x,puntoA.y), new PVector(puntoB.x,puntoB.y));
  bc = new Vector(new PVector(puntoB.x,puntoB.y), new PVector(puntoC.x,puntoC.y));
  //PVector m = bc.resta(bc.getDestino(), bc.getOrigen());
  PVector m = bc.resta(puntoC,puntoB);
  puntoD = bc.sumar(puntoA, m);
  cd = new Vector(new PVector(puntoC.x,puntoC.y),new PVector(puntoD.x,puntoD.y));
  da = new Vector(new PVector(puntoD.x,puntoD.y),new PVector(puntoA.x,puntoA.y));
  
  println("Punto D: " + puntoD.x + ", " + puntoD.y);
}

public void draw(){
  background(255);
  translate(width/2, height/2);
  scale(2.5, -2.5);
  /* dibujo de un eje carteciano y los puntos*/
  stroke(150);
  strokeWeight(1);
  line(0,-150,0,150);
  line(-150,0,150,0);
  stroke(255,0,255);
  ellipse(puntoD.x,puntoD.y,2,2);
  
  /*dibujo de los vectores*/
  stroke(255,51,102);
  strokeWeight(1);
  ab.display();
  bc.display();
  stroke(0,153,255);
  cd.display();
  da.display();
  
}
