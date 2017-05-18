class Bird extends GameObject {
  float speed;
  boolean left;
  boolean click;
  float birdTime;
  float birdTimer=1.5;
  int choose;
  boolean right;
  boolean realRight;
  boolean realLeft;
  Bird() {
    super(mouseX, mouseY); //my x and y of the bird
    //left = false; 
    speed=random(-3, 1);
    click=false;
    choose=(int)random(0, 1);
    realRight=true;
    realLeft=false;
  }

  void update() {
    if (speed>-1 && speed < 1) {
      speed=1;
    }
    if (choose ==1) {
      left=true;
      right=false;
    }
    if (choose==0) {
      //left=false;
      //right = true;
    }
    if (speed<0) {
      println("left!!!!!");
      realLeft=true;
      realRight=false;
    }
    if (speed>0) {
      println("right!!!!!");
      realRight=true;
      realLeft=false;
    }
    if (right) { //go left
      pos.x+=speed;
    }

    if (left) { //go right
      pos.x-=speed;
    }
    pos.x+=speed;
    if (pos.x>width || pos.x<0) { //removing the birds when they hit the screen

      gameObject.remove(this);
    }
    println("right" +right);
    println("left" +left);
  }


  void render() {
    //Making the birds face the right direction
    if(realRight){
    pushMatrix();
    fill(255, 0, 0);
    noStroke();
    translate(pos.x, pos.y);
    ellipse(10, 10, 20, 20);
    ellipse(20, 10, 10, 10);
    popMatrix();
    }
  
    if(realLeft){
    pushMatrix();
    fill( 255, 0, 0);
    noStroke();
    translate(pos.x, pos.y);
    ellipse(10, 10, 20, 20);
    ellipse(0, 10, 10, 10);
    popMatrix();
  }
  }
}