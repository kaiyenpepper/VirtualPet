//import arduino
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

//setup display and arduino
void setup()
{
  size(600,550);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  //change the [0] to a [1] or [2] etc. if your program doesn't work
  noStroke();
  drawCrow();
}


//draw virtual pet
void draw()
{
//arduino stuff
  int y = arduino.analogRead(5);
  System.out.println(y);
    if (y>45){
     background(245,163,62);
     
     //talking crow
     drawCrow();
     triangle(225,155,270,140,300,230);
     fill(237,96,96);
     triangle(225,155,252,147,285,210);
     fill(250,230,78);
     triangle(220,155,335,125,265,160);
     
  } else {
     background(209,120,36);
     textAlign(CENTER);
     PFont font = loadFont("CenturyGothic-BoldItalic-48.vlw");
     textFont(font,32);
     text("Shut up Crow!", 450, 150);
     
     //sad crow
     drawCrow();
     stroke(0,0,0);
     noFill();
     line(225,150,305,235);
     noStroke();
  } 

}

void drawCrow(){
  //crow body
  fill(48,48,48);
  ellipse(225,150,100,100);
  ellipse(210,250,250,150);
  arc(100,280,150,250,0,PI*3/4);
  //red eyes
  fill(250,0,0);
  ellipse(210,130,10,10);
  ellipse(230,130,10,10);
  //fill yellow
  fill(250,230,78);
  triangle(275,140,305,240,220,155);
  //leg
  rect(200,320,5,40);
  rect(220,320,5,40);
  rect(200,360,5,40);
  rect(220,360,5,40);
  //feet
  arc(200,400,40,20,0,PI*3/4);
  arc(220,400,40,20,0,PI*5/8);
  //knees
  ellipse(203,360,10,10);
  ellipse(223,360,10,10);
  //thighs  
  fill(40,40,40);
  arc(200,320,25,30,0,PI*3/4);
  arc(220,320,25,30,0,PI*3/4);
}
