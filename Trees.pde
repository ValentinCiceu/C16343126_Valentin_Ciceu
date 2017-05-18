class Tree extends GameObject{
  float growRate=0;
  float rate=1;
  float growth=10;
  boolean grow;
  PVector otherPos;
  float past;
  Tree(){
    super(mouseX,mouseY);
    growth=random( 50,100);
    grow=true;
    otherPos=new PVector(pos.x,pos.y);
    past=pos.y-growth;
  }
  
  
  void update(){
    if(grow){
      growRate=rate;
      
      pos.y-=growRate;
      
      if(pos.y<past){
        grow=false;
      }
      println("past"+past);
      println("pos.y"+pos.y);
      
    }
    
  }
  
  void render(){
    stroke(0);
    line(pos.x,pos.y,pos.x,otherPos.y);
    
  }
  
  
}