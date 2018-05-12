Cannon can;
// ro, el cañon lo investigamos por que no supimos como hacerlo
// y no logramos que las balas reboten 
Piso pis;
Rect rec;
 
void setup(){
  size(600, 400);
  
  can=new Cannon();
  pis=new Piso();
  rec=new Rect();
}

void draw(){
 background(28,26,24);
 fill(129,73,13);
  rect(1,328,598,50);
  
   fill(52,29,15);
  rect(1,348,598,50);
  stroke(5);
  rec.display();
  
   can.display();
  can.mov();
  can.limites();
  can.limitesrec();
  pis.display();
  
 
  

  //shoot.disparo();
  
}
