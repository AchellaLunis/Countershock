float x = 0;
void setup() { 
  size(500,500); 
}

void draw() { 
  
  background(153,70,43); 
  frameRate(1080);
  
    if(keyPressed == true){
    background(0);
  } else {
    background(153,70,43);
  }
    
  
  
  for(int b=1; b <30; b++){
   noFill(); 
   stroke(#BD8C3A);
   strokeWeight(5);
   ellipse(width/2, height/2, (b * 20), (b * 20)); 
  
 }

 
  strokeWeight(25);
  stroke(#BD8C3A); // The crust 
 
  fill(255,213,19); //pizza 
  ellipse(250,250, width/2, height/2); 
 
  //Peproni???????????
 

  if(x < 150) 
    x = x + 1; 
  fill(#FA570A); 
  noStroke(); 
  ellipse(x+10,235,16,16);
  ellipse(x+50,300,16, 16);
  ellipse (x+78, 276, 16, 16);
  ellipse (x+30, 200, 16, 16);
  ellipse (x+120, 225, 16, 16);
  ellipse (x+70, 163, 16, 16);
  ellipse (x+100, 333, 16, 16);
  ellipse (x+150, 257, 16, 16);
  

 

 fill(255,235,49);
  //name of the store text
  if (mousePressed == true) {  
    PFont font; 
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font,50); 
    text("Pizza Rave", 100,50); 
  
  } else if (mouseX > 300) {
    fill(255);
  } else if (mouseX < 300) {
  } fill(255);
  
  if(mouseX > 300) {
    PFont font; 
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font, 30); 
    text("Very Yum", 30,140); 

  } else if (mouseX > 100) { 
    PFont font; 
    font = loadFont("BookAntiqua-48.vlw");
    textFont(font, 30); 
    text("Much Pizza", 300,340); 
    
  }
  
}
