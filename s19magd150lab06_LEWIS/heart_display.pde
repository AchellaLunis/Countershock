class heartDisplay{

//Here are the three hearts in on the screen. The first two are red. 

 heartDisplay(){ 
     drawBorder();
     
  //These call the hearts. 
  fill(255,0,0);
  stroke(0);
  heart(200,100);
  heart(360,100);
  
  //this heart has no fill for the interaction bit 
  noFill();
  heart(520,100);
  
  //this code is the commands to fill the nofill heart 
  heartCommands();
  
  heartText();
  }

void heart(float x, float y){ 
beginShape();
strokeWeight(5);
//section one--the first rise
vertex(x,y); 
vertex(x, y-10);
vertex(x+10,y-10);
vertex(x+10,y-20);
vertex(x+30,y-20);
vertex(x+30, y-30);
vertex(x+50,y-30);
//section two--the first fall
vertex(x+50,y-20); 
vertex(x+60,y-20); 
vertex(x+60,y-10); 
vertex(x+70, y-10); 
//the virticle line 
vertex(x+70,y+60);
//the right half of the bottom V of the heart 
vertex(x+50,y+60); 
vertex(x+50,y+80); 
vertex(x+30,y+80); 
vertex(x+30, y+100); 
vertex(x+10, y+100); 
vertex(x+10,y+110);
//the bottom line of the heart 
vertex(x-20,y+110);
//The left half of the V
vertex(x-20,y+100);
vertex(x-40,y+100); 
vertex(x-40, y+80); 
vertex(x-60,y+80);
vertex(x-60, y+60); 
vertex(x-80,y+60); 
//another line but this ones goes up 
vertex(x-80,y-10);
//the rise of the left hump
vertex(x-70,y-10);
vertex(x-70,y-20);
vertex(x-60,y-20);
vertex(x-60,y-30);
//flat line at the top of the left side 
vertex(x-40,y-30);
//now we go down to complete the heart 
vertex(x-40,y-20); 
vertex(x-20,y-20); 
vertex(x-20,y-10); 
vertex(x-10,y-10);
vertex(x-10,y);
//You have completed the heart! 
vertex(x,y);

endShape(); 

}

//void life is used to as seperate units of the red fill to make it look like 
//there is life being floodded into the heart. 
void lifeOne(float x, float y){ 

 beginShape();
 strokeWeight(5);
 fill(255,0,0);
 //the bottom line of the heart 
 //this one is specific to the fills
vertex(x,y+110);
vertex(x-20,y+110);
//and now we rise
vertex(x-20,y+100);
vertex(x-40,y+100); 
vertex(x-40, y+80); 
vertex(x-60,y+80);
vertex(x-60, y+60); 
vertex(x-80,y+60); 
//another line but this ones goes up 
vertex(x-80,y-10);
//the rise of the left hump
vertex(x-70,y-10);
vertex(x-70,y-20);
vertex(x-60,y-20);
vertex(x-60,y-30);
//flat line at the top of the left side 
vertex(x-40,y-30);
//now we go down to complete the heart 
vertex(x-40,y-20); 
vertex(x-20,y-20); 
vertex(x-20,y-10); 
vertex(x-10,y-10);
vertex(x-10,y);
//You have completed the heart! 
vertex(x,y); 
  endShape();
}

void lifeTwo(float x, float y) {
fill(255,0,0);
beginShape(); 

vertex(x,y); 
vertex(x, y-10);
vertex(x+10,y-10);
vertex(x+10,y-20);
vertex(x+30,y-20);
vertex(x+30, y-30);
vertex(x+50,y-30);
//section two--the first fall
vertex(x+50,y-20); 
vertex(x+60,y-20); 
vertex(x+60,y-10); 
vertex(x+70, y-10); 
//the virticle line 
vertex(x+70,y+60);
//going down V
vertex(x+50,y+60); 
vertex(x+50,y+80); 
vertex(x+30,y+80); 
vertex(x+30, y+100); 
vertex(x+10, y+100); 
vertex(x+10,y+110);
//the bottom line of the heart 
//this is one specific to the fills 
vertex(x,y+110);
endShape();
}
 
void heartCommands() {
    //if you press W and E key then the last empty heart will fill with life 
 if (keyPressed) {
   if (key == 'w'|| key == 'W') {
     lifeOne(520,100); 
     
     textSize(15);
     fill(255,0,0);
     text("Thanks!", 50,50);
     text("So kind!", 250,250);
   }
   if (key == 'e' || key == 'E'){
     
     lifeTwo(520,100);
     textSize(15);
     fill(255,0,0);
     text("You made me feel whole again", 400 ,235);
     text("^.^", 600,40);
   }
  }
  }

void drawBorder(){
  //this stuff draws the neato border. Make's the space feel less
  //empty
  noFill();
  strokeJoin(BEVEL);
  strokeWeight(30);
  stroke(163,83,13);
  rect(0,0,width,height);

 }

void heartText() {
  //the beginning text. 
  textSize(32); 
  fill(0);
  text("Press W and E to Give Life", 150,50);


 }
}
