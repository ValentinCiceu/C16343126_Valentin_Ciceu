class Stars{
  
  //float x=random(width), y=random(height-250);
  PVector pos= new PVector(random(width), random(height));
  color grey=color(100);
  color white=color(255);
  color blink;
  float change;
  float rate;
  
 void update(){
   
   
 }
 
 
 void render(){
   stroke(255);
   fill(blink);
   point(pos.x,pos.y);
   
   
 }
  
}