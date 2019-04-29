//Okay, so I tried my hardest. It was a struggle, but I think I did okay.
//I couldn't remember how to get the mouse to only follow one circle 
//but honestly, it turned out way better since i couldn't remember 

void setup(){
  
size (1000,1000);
background(73,255,156);

int w = 1000;
int h = 1000;
println("The height is " + w + " The width is " + h);
  
  
}

void draw () { 
 
  float b = map(mouseX,0,40 + 10,30,80 - 10);
  //Makes the bubbles pop up away from the mouse. Kinda cool. 
 // Makes it look more random. 
  
  //the base of the bubble 
  ellipseMode(CENTER); 
  fill(84,214,195);
  stroke(141,255,233);
  ellipse(b,mouseY,50,50); 
  
  //the light reflection of said bubble?
  float a = max(5.2,29.23 / 2);
  fill(255,a + 10);
  noStroke();
  ellipse(b,mouseY, width,5);
  //I was just curious what would happen if I put width here and-- 
  //--now it's way cooler. That isn't how light reflection works but pretend pls. 
  
  //small frame rate to make it look like bubbles are appearing at random
  frameRate(5);
  println("The Frame Rate is " + frameRate);
  
  //this could be relevant information to someone 
  float d = dist(mouseX,mouseY,pmouseX,pmouseY); 
  println ("The distance between bubbles is " + d);
}
