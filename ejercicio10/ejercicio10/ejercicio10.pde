PVector puntoA;
PVector puntoB;
PVector puntoC;
PVector puntoD;
Vector ab;
Vector bc;
Vector cd;
Vector da;
PVector restabc;

public void setup(){
  size(250,250);
  puntoA = new PVector(-10,-20);
  puntoB = new PVector(40,-10);
  puntoC = new PVector(50,20);
  
  ab = new Vector(new PVector(puntoA.x,puntoA.y), new PVector(puntoB.x,puntoB.y));
  bc = new Vector(new PVector(puntoB.x,puntoB.y), new PVector(puntoC.x,puntoC.y));
  restabc = bc.resta(bc.getDestino(), bc.getOrigen());
  puntoD = bc.sumar(puntoA, restabc);
  cd = new Vector(new PVector(50,20),new PVector(puntoD.x,puntoD.y));
  //cd = new Vector(new PVector(50,20),new PVector(puntoD.y,puntoD.x));
  da = new Vector(new PVector(puntoD.x,puntoD.y),new PVector(-10,-20));
  
  
  println("Punto A: " + puntoA.x + ", " + puntoA.y);
  println("Punto B: " + puntoB.x + ", " + puntoB.y);
  println("Punto C: " + puntoC.x + ", " + puntoC.y);
  println("Vector AB: " + ab.destino.x + ", " + ab.destino.y);
  println("Vector BC: " + bc.destino.x + ", " + bc.destino.y);
  println("Punto D: " + puntoD.x + ", " + puntoD.y);
  println("resta c-b: " + restabc.x + ", " + restabc.y);
  
  println("Vector CD: " + cd.destino.x + ", " + cd.destino.y);
  println("Vector DA: " + da.destino.x + ", " + da.destino.y);
}

public void draw(){
  background(255);
  translate(width/2, height/2);
  scale(1, -1);
  stroke(255,0,0);
  strokeWeight(3);
  ab.display();
  bc.display();
  stroke(0,255,0);
  cd.display();
  da.display();
  
}
