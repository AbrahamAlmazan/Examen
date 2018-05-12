class Rect{
  PVector pos;
  
  Rect(){
    pos=new PVector(width/2+width/4, 0); 
  }
  void display(){
    fill(255);
    rect(pos.x, pos.y, 50, 150);
  }
}
