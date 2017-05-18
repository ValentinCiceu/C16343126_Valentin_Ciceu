class Cloud extends GameObject {
  float speed;
  Cloud() {

    super(random(width+50, width+150), random(0, height/3));
    speed=random(-3, -1);
  }

  void update() {
    pos.x+=speed;
    if(pos.x+80<0){ //reset the clouds
      pos.x=random(width+50, width+150);
      pos.y=random(0, height/3);
      speed=random(-3, -1);
      
    }
  }


  void render() {

    pushMatrix();
    translate(pos.x, pos.y);
    fill(255);
    stroke(255);
    ellipse(20, 20, 30, 20);
    ellipse(50, 20, 50, 35);
    ellipse(80, 20, 30, 20);
    popMatrix();
  }
}