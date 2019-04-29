size(600,600); 
background(1); 

//road? 
stroke(255);
strokeWeight(5);
line(120,600,150,500);

stroke(255);
strokeWeight(5);
line(190,600,150,500);

//earth vs sky
stroke(255);
line(0,500,600,500);

//left leg of the building
fill(155);
noStroke();
rectMode(CENTER); 
rect(100,600, 50, 500);

//right leg of the building
fill(155); 
rectMode(CENTER); 
rect(200,600,50,500); 

//clocktower square
fill(130); 
stroke(100); 
strokeWeight(5); 
rectMode(CENTER);
rect(150,240,170,170);

//line thingy between legs and clock tower square 
fill(100);
stroke(170);
strokeWeight(5); 
rectMode(CORNERS); 
rect(250,330,50,350);

fill(100);
stroke(170);
strokeWeight(5); 
rectMode(CORNERS); 
rect(250,130,50,150);

//clock face outline
noFill(); 
stroke(0);
ellipse(150,240,150,150);

//clockface interior 
fill(230); 
noStroke();
ellipse(150,240,135,135);


//big hand 
strokeWeight(5);
stroke(0);
line(150,240, 150,180);

//little hand 
line(150,240,180,200);

//clock center point 1 
strokeWeight(10);
stroke(255);
point(150,240);

//clock center point 2 
strokeWeight(5);
stroke(0);
point(150,240);
