//Lab test by Valentin Ciceu 2017 C16343126

Stars[] stars = new Stars[400]; //i want 400 stars when it goe night
void setup() {

  size(500, 500);
  for (int i=0; i<stars.length; i++) { //Array for the stars
    stars[i]=new Stars(); //the array of the stars to get the 200 called at once
  }
  //gameObject.add(new Sun());
  //gameObject.add(new Sun());
  sun=new Sun(); 
  gameObject.add(sun);
  for (int i = 0; i<6; i++) {
    gameObject.add(new Cloud());
  }
}

ArrayList < GameObject > gameObject=new ArrayList();
Sun sun;


boolean press=false;
float timer=0;
float timerSpeed=1.5;
float resetTimer;
float resetSpeed=1.5;
boolean stop=true;

color dark=color(0);
color light=color(0, 255, 255);

float sTime;
float sTimer=1.5;

void draw() {
  background(0);
  noStroke();
 // println(sun.pos.y);
//this is for the sunset
  if (sun.pos.y>0) {
    fill(light); // the top half colour. Will make it go black at sunset.
  }
  if (sun.pos.y<0) {

    fill(dark);
    sTime+=sTimer;
  }
  if(sTime>500){
    sun.pos.y=240;
    sTime=0;
  }
  rect(0, 0, width, height);
  if(sun.pos.y<0){
          for (int i=0; i<stars.length; i++) {//this is for the stars to be rendered in the background
    stars[i].update();
    stars[i].render();
  }
    
  }
  fill(0, 255, 0);
  noStroke();
  rect(0, 250, width, height);

//this is for the array list
  for (int i = 0; i< gameObject.size(); i++) {

    GameObject go = gameObject.get(i);
    go.update();
    go.render();
  }

  //println(timer);
  //this is for the mouse press controller. So that you dont spawn hundreds of object a second.
  //if (stop) {
  //  resetTimer=0;
  //  if (mousePressed) { //tjis algorithim resests the lick/ controlls the spawn rat of the birds

  //    press=true;
  //    //gameObject.add(new Bird());
  //  }
  //}
  //if (mouseY<250) { //top half spawn
  //  if (press) {
  //    //gameObject.add(new Bird()); 
  //    timer+=timerSpeed;
  //  }
  //  if (timer>0) {
  //    stop=false;
  //    press=false;
  //    resetTimer+=resetSpeed;
  //  }
  //  if (resetTimer>100) {
  //    stop=true;
  //    timer=0;
  //  }
  //}
  //if (mouseY>250) { //bottom half spawn
  //  if (press) {
  //    gameObject.add(new Tree()); 
  //    timer+=timerSpeed;
  //  }
  //  if (timer>0) {
  //    stop=false;
  //    press=false;
  //    resetTimer+=resetSpeed;
  //  }
  //  if (resetTimer>100) {
  //    stop=true;
  //    timer=0;
  //  }
  //}
}

void mousePressed(){ //to get the birds and trees to spawn after every click
  if(mouseY<height/2){
  gameObject.add(new Bird());
  }
  
  if(mouseY>height/2){
    gameObject.add(new Tree()); 
  }
  
}


void mouseReleased(){
  
  
}