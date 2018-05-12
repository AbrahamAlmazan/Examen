class Cannon{
 PVector mouse,center,pos; 
float x,y,dt,v,dx,dy;
boolean disparo;
float modMouse;
  Cannon(){
  mouse = new PVector(mouseX,mouseY);
  center = new PVector(width/2,height-10);
  pos = new PVector(0,150);
  dt = 0.01;
  v = 0.005;
  dx = 0.0;
  dy=0.0;
  disparo = false;
    
  }
  
  void display(){
    //redibujado de ejes
  fill(240,233,24);
  ellipse(10, height-10, 20, 20);
  //line(width/2-20, height-10, width/2+20, height-10); //eje X
  //line(width/2, height-25 , width/2, height+5); //eje Y
 
  mouse.x = mouseX;
  mouse.y = mouseY;
   
  mouse.sub(center);
  modMouse = sqrt((mouse.x*mouse.x)+(mouse.y*mouse.y));
  //mouse.normalize();
  mouse.x /= modMouse;
  mouse.y /= modMouse;
  mouse.mult(50);
   
   
  translate(10,height-10);
  strokeWeight(10);
  line(0,0,mouse.x,mouse.y);
  fill(255,0,0);
  }
  
  void mov(){
  if(mousePressed){
    disparo = true;
    dx=0.0;
    dy=0.0;
    pos.x = (mouse.x/8);
    pos.y = (mouse.y/8);
  }
   
   
  if(disparo==true){
     
    fill(255, 0, 0);
    ellipse( dx, dy, 15, 15);
    dx += v*dt + pos.x;
    dy += v*dt + pos.y;    
  }
  
  if(pos.x>width-10){
   dx -= v*dt + pos.x;
  } else if(pos.x<0+10){
   dx += v*dt + pos.x;
  } 
  
  if(pos.y>height-10){
   dy -= v*dt + pos.y;
  }else if(pos.y<0+10){
   dy += v*dt + pos.y; 
  }
  }
  
  void limites(){
   if(dx>width){ 
     dx -= v*dt - pos.x;
   }else if(dx<0+7.5){
     dx += v*dt + pos.x;
   }
   if(dy>height-90-7.5){
    dy -= v*dt - pos.y; 
   }else if(dy<0+7.5){
     dy += v*dt + pos.y; 
   }
 }
 
  void limitesrec(){
    if(dx>=450 && dx<=500 && dy==170){
   dx -= v*dt + pos.x;
   }
   if(dx>width/2+width/4-7.5 && dy<150){ 
      dx += v*dt + pos.x;
   }else if(dx==520 && dy>0&& dy<150){
      dy -= v*dt + pos.y; 
     
   }
    
  }
}
