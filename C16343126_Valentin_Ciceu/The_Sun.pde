class Sun extends GameObject{
  float speed;
  float radius;
  float sunTime;
  float sunTimer;
  Sun(){
    super(width-80,230);
    speed=-0.5;
    radius=50;
    sunTime=0;
    sunTimer=1.5;
  }
  
  
  void update(){
    
    pos.y+=speed;
    if(pos.y+radius< 0){
     //pos.y=height-100;
     sunTime+=sunTimer;
     
    }

    
  }
  
  
  void render(){
    noStroke();
    fill(255,255,0);
    ellipse(pos.x,pos.y,radius,radius); 
    
  }
  
}