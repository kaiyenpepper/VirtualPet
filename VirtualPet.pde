//setup display
void setup()
{
  size(600,550);
  noStroke();
  drawCrow();
}


//draw virtual pet
void draw()
{
drawCrow();

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
