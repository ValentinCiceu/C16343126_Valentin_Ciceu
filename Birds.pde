class Bird extends GameObject{
  float speed;
  boolean left;
  boolean click;
  float birdTime;
  float birdTimer=1.5;
  int choose;
  boolean right;
  Bird(){
  super(mouseX,mouseY); //my x and y of the bird
  //left = false; 
  speed=random(-3, 1);
  click=false;
  choose=(int)random(0,1);
  
  }
  
  void update(){
    if(speed>-1 && speed < 1){
      speed=1;
    }
    if(choose ==1){
      left=true;
      right=false;
    }
    if(choose==0){
      left=false;
      right = true;
    }
  if(right){ //go left
  pos.x+=speed;
  
  }
  
  if(left){ //go right
    pos.x-=speed; 
    
  }
  pos.x+=speed;
  if(pos.x>width || pos.x<0){ //removing the birds when they hit the screen
    
   gameObject.remove(this); 
  }

  }
  
  
  void render(){
    pushMatrix();
    fill(255,0,0);
    translate(pos.x , pos.y);
    ellipse(10,10,20,20);
    ellipse(20,10,10,10);
    popMatrix();
    
  }
  
}