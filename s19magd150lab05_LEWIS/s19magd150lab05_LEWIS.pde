//rectangle stuff
float a = 100; 
float b = 200;
float c = 100; 
float d = 200; 

void setup() { 
  size(1000,1000); 
  background(100,200,255); 


}

void draw () { 
  //the square button into the square demention
  rectMode(CORNER);
  rect(a,b,c,d); 
  fill(0);
  stroke(255); 
  strokeJoin(ROUND);
  strokeWeight(2); 
  
  noFill();
  
  textSize(13);
  text("Dimension One",100,300);
  fill(255,100,200);
  //text for square

  
  if(mouseX>a&& mouseX<a+c && mouseY>b && mouseY<b+d){
 //this is what happens when you touch the square demention
    fill(255,105,105); 
    ellipse(500,500,100,100);
    textSize(13);
    fill(0);
    text("Enter Void?", 470,500);
    //the void will hurt your eyes
    //circle button 
  }
}


//clicky mousey stuff
void mousePressed(){ 
  //if you presst the square it brings you to the first demention 
  if (mouseX>a&& mouseX<a+c && mouseY>b && mouseY<b+d) {
    background(255); 
  
    for(int q=1; q < 100; q++) {
    noFill(); 
    stroke(255,100,200);
    strokeWeight(5);
    rectMode(CENTER);
    rect(width/2, height/2, (q*20), (q*20)); 
    }
  }
 
     //Enter the void? 
     //Circle button stuff
  float distX = 500 - mouseX; 
  float distY = 500 - mouseY; 
  float distance = sqrt((distX * distX) + (distY * distY)); 
  if (distance < 25) {
    background(0);
    for(int q=1; q < 100; q++) {
    noFill(); 
    stroke(0,255,0);
    strokeWeight(5);
    ellipse(width/2, height/2, (q*20), (q*20)); 
    }
  }
}
 
