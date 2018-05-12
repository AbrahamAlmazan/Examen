class Piso{
  PVector pos, size;
  
  Piso(){
    pos=new PVector(0, height-90);
    size=new PVector(width, height-100);
  }
  
  void display(){
    fill(230);
    stroke(5);
    rect(pos.x, pos.y, size.x, size.y);
  }
  
}
