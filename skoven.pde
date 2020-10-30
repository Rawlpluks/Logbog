void setup() {
size(400,200);
background(204, 255, 255);
smooth();
frameRate(30);
}

void draw (){
background(204, 255, 255);
    
ellipseMode(CENTER);
rectMode(CENTER);
  //Zoog's bænk
noStroke();
fill(255, 179, 102);
rect(120,200,250,100);

noStroke();
fill(204, 255, 255);
rect(1,175,50,50);
rect(200,175,50,50);
rect(100,200,100,50);
rect(240,175,100,50);

//Solen
noStroke();
fill(255, 255, 51);
ellipse(395,5,100,100);
//Træet
noStroke();
fill(153, 102, 0);
rect(5,100,10,200);

//Bladene
fill(0, 102, 0);
ellipse(5,50,50,50);
ellipse(50,50,50,50);
ellipse(65,45,50,50);
ellipse(90,20,50,50);
ellipse(5,5,50,50);
ellipse(50,5,50,50);
ellipse(50,20,50,50);
ellipse(45,20,50,50);
ellipse(40,20,50,50);

//Græsset
noStroke();
fill(51, 204, 51);
rect(200,200,400,10);

//Zoog's krop
stroke(0);
fill(255, 80, 80);
rect(100,100,20,100);

//Zoog's hoved
fill(255);
ellipse(100,70,60,60);

//Zoog's øjne
fill(0);
ellipse(90,70,16,32);
ellipse(109,70,16,32);

//Zoog's ben
stroke(0);
line(90,150,80,160);
line(110,150,120,160); 
line(80,160,130,155);
line(120,160,100,200);

//Zoog's arme
stroke(0);
line(110,100,120,150);
line(90,100,80,150);

//Zoog's sko
fill(255, 80, 80);
ellipse(125,160,10,20);


//Bob's ben
fill(255);
line(250,200,245,170);
line(245,170,260,150);
line(260,150,270,180);
line(270,180,290,170);

//Bob's krop
fill(255, 128, 255);
triangle(mouseX,mouseY-15,mouseX-10,mouseY+30,mouseX-20,mouseY-30);

//Bob's arme
fill(255);
line(mouseX-20,mouseY-25,mouseX+20,mouseY-10);
line(mouseX+20,mouseY-10,mouseX+20,mouseY+15);
line(mouseX-8,mouseY-25,mouseX+10,mouseY-20);
line(230,120,220,110);

//Bob's hoved
fill(255);
ellipse(mouseX-10,mouseY-45,60,60);

//Bob's øje
fill(0);
ellipse(mouseX-20,mouseY-45,16,32);
}
