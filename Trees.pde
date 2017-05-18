class Tree extends GameObject {
  float growRate=0;
  float rate=1;
  float growth=10;
  boolean grow;
  PVector otherPos;
  float past;
  float r, g, b;
  float rx;
  float rSpeed;
  Tree() {
    super(mouseX, mouseY);
    growth=random( 50, 100);
    grow=true;
    otherPos=new PVector(pos.x, pos.y);
    past=pos.y-growth;
    r=random(255);
    g=random(255);
    b=random(255);
    rx=0;
    rSpeed=0.02;
  }


  void update() {
    rx+=rSpeed;
    if (grow) {
      growRate=rate;

      pos.y-=growRate;

      if (pos.y<past) { ///grows the flower then stops 
        grow=false;
      }
      println("past"+past);
      println("pos.y"+pos.y);
    }
  }

  void render() {
    stroke(0);


    line(pos.x, pos.y, pos.x, otherPos.y); //the stem

    pushMatrix();
    //    fill(r,g,b);
    //ellipse(pos.x-0,pos.y+-22,20,20);
    //ellipse(pos.x+20,pos.y+-25,20,20);
    //ellipse(pos.x-0,pos.y+-3,20,20);
    //ellipse(pos.x-20,pos.y+-24,21,20);
    //ellipse(pos.x-1,pos.y+-42,21,20);

    translate(pos.x, pos.y); //the flower
    fill(r, g, b); //change colour
    ellipse(0, -11, 20, 20);
    ellipse(0, -51, 20, 20);
    ellipse(0, -31, 20, 20);
    ellipse(-20, -32, 20, 20);
    ellipse(21, -32, 20, 20);
    popMatrix();
  }
}