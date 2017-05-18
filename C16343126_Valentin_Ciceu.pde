//Lab test by Valentin Ciceu 2017 C16343126


void setup(){
  
  size(500,500);
  //gameObject.add(new Bird());
  for(int i = 0; i<6; i++){
    gameObject.add(new Cloud());
    
  }
  
}

ArrayList < GameObject > gameObject=new ArrayList();



boolean press=false;
float timer=0;
float timerSpeed=1.5;
float resetTimer;
float resetSpeed=1.5;
boolean stop=true;
void draw(){
  background(0);
  noStroke();
  fill(0,255,255);
  rect(0,0,width,height);
  fill(0,255,0);
  rect(0,250,width,height);
  
  for(int i = 0; i< gameObject.size(); i++){
    
    GameObject go = gameObject.get(i);
    go.update();
    go.render();
    
  }

  //println(timer);
 
if(stop){
  resetTimer=0;
 if(mousePressed){ //tjis algorithim resests the lick/ controlls the spawn rat of the birds
   
   press=true;
  //gameObject.add(new Bird()); 
   
 }
}
if(mouseY<250){ //top half spawn
 if(press){
   gameObject.add(new Bird()); 
   timer+=timerSpeed;
 }
 if(timer>0){
   stop=false;
   press=false;
   resetTimer+=resetSpeed;
 }
if(resetTimer>100){
  stop=true;
  timer=0;
}
  
}
if(mouseY>250){ //bottom half spawn
 if(press){
   gameObject.add(new Tree()); 
   timer+=timerSpeed;
 }
 if(timer>0){
   stop=false;
   press=false;
   resetTimer+=resetSpeed;
 }
if(resetTimer>100){
  stop=true;
  timer=0;
}
  
}
}