class Tree extends GameObject{
  float growRate=0;
  float rate=1;
  float growth=10;
  boolean grow;
  PVector otherPos;
  float past;
  float r ,g , b;
  Tree(){
    super(mouseX,mouseY);
    growth=random( 50,100);
    grow=true;
    otherPos=new PVector(pos.x,pos.y);
    past=pos.y-growth;
    r=random(255);
    g=random(255);
    b=random(255);
  }
  
  
  void update(){
    if(grow){
      growRate=rate;
      
      pos.y-=growRate;
      
      if(pos.y<past){ ///grows the flower then stops 
        grow=false;
      }
      println("past"+past);
      println("pos.y"+pos.y);
      
    }
    
  }
  
  void render(){
    stroke(0);
    fill(r,g,b);
    ellipse(pos.x-0,pos.y+-22,20,20);
    ellipse(pos.x+20,pos.y+-25,20,20);
    ellipse(pos.x-0,pos.y+-3,20,20);
    ellipse(pos.x-20,pos.y+-24,21,20);
    ellipse(pos.x-1,pos.y+-42,21,20);
    
    line(pos.x,pos.y,pos.x,otherPos.y);
    
    //for(int i = 0 ; i< 12; i++){ do later for jazz
    //  float pettleX=pos.x+sin(theta)*100;
    //  float pettleY=pos.y-cos(theta)*100;
    //  ellipse(pettleX,pettleY,10,10);
    //  theta+=0.005;
    //}
    
  }
  
  
}