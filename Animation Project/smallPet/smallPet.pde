ArrayList<PVector> balls=new ArrayList<PVector>();
int oX=300, oY=670;
float tx=0,ty=0;
int hold=-1,time=0;
int r=10;
void setup() {
  size(800,700);
  balls.add(new PVector(oX, oY)); 
}

void draw() {
  background(255);
  if (hold!=-1) {
    balls.get(hold).x = mouseX;
    balls.get(hold).y = mouseY;
  }
  for (PVector b : balls) {
    fill(255,228,200);
    ellipse(b.x, b.y, r * 2, r * 2);
  }
  fill(255, 0, 0);
  ellipse(oX, oY, 6, 6);
  fill(255,228,200);
  here();
  turtle();
}

void mousePressed() {
  PVector oBall=balls.get(time);
  float d=dist(mouseX, mouseY, oBall.x, oBall.y);
  if (d<r){
    hold=0;
    balls.add(0, new PVector(oX, oY));
    time++;
  }
}
void mouseReleased() {
  hold=-1;
}

void here(){
  fill(255,0,0);
  textSize(20);
  text("Turtle food->",170,675);
}

void move(){

}void turtle(){
  if(time>1){
  translate(balls.get(1).x-300,balls.get(1).y-100);
  drawBackLegs();
  drawBody();
  drawLegs();
  drawFace(360, 225);
  drawEyes();
  drawHelmet();
  tx=balls.get(1).x-300;
  ty=balls.get(1).y-100;
  }
  else{
  translate(0,200);
  drawBackLegs();
  drawBody();
  drawLegs();
  drawFace(360, 225);
  drawEyes();
  drawHelmet();
  }
}
// body
void drawBody() {
  stroke(0);
  strokeWeight(3);
  // dike
  fill(245, 245, 220);
  ellipse(400, 240, 210, 150);
  // dong
  fill(0);
  ellipse(360, 250, 80, 60);
  // ke
  fill(70, 140, 100);
  ellipse(400, 200, 240, 130);
  ellipse(400, 180, 220, 130);
  fill(180, 0, 0);
  arc(380,300,100,40,0.2,PI-0.2);
  arc(370,290,100,40,0.2,PI-0.2);
  arc(365,280,100,40,0.2,PI-0.2);
  arc(360,270,100,40,0.2,PI-0.2);
  arc(360,260,100,40,0.2,PI-0.2);
  
 // rect(375,320,30,20,10);
  rect(375,310,30,20,10);
  rect(365,300,30,20,10);
  rect(355,290,30,20,10);
  rect(350,280,30,20,10);
}


void drawFace(float x, float y) {

  // face
  noStroke();
  fill(140, 220, 140);
  ellipse(x, y, 156, 100);

  noFill();
stroke(40);
strokeWeight(14);   // thickness of strap
arc(x-5,y-30,140,160,0.2, PI - 0.2);
arc(x,y+65,20,10,PI,TWO_PI);
  // buckle
  fill(200);
  rect(x, y+45, 20, 14, 4);

  // mouth
  stroke(0);
  strokeWeight(3);
  line(x - 15, y + 20, x + 15, y + 20);

  // eyebrows
  strokeWeight(4);
  line(x - 40, y - 30, x - 15, y - 35);
  line(x + 15, y - 35, x + 40, y - 30);
}


// eye
void drawEyes() {
  float eyeOffset = 6; 
  drawEye(330, 210, eyeOffset);
  drawEye(390, 210, eyeOffset);
}



//eyeMove
void drawEye(float ex, float ey, float r) { 
  noStroke();

  fill(255);
  ellipse(ex, ey, 40, 40);
  float angle = atan2(mouseY - ey, mouseX - ex);
  float px = ex + cos(angle) * r;
  float py = ey + sin(angle) * r;
  fill(0);
  ellipse(px, py, 20, 20);
  fill(140, 220, 140);
  arc(ex, ey, 50, 50, PI,TWO_PI);
}



// toukui
void drawHelmet() {
stroke(0);//right
rect(340,170,10,20);
//ear protector
stroke(3);
fill(220, 60, 60);
rect(280,200,20,25,10);
rect(275,225,20,25,10);
rect(280,180,35,35,10);

 stroke(0);              
strokeWeight(5);        // 4~6
fill(180, 0, 0);
arc(360, 190, 160, 170, PI, TWO_PI); // main
// 
stroke(0);
strokeWeight(4);
//edge
fill(140, 0, 0);
rectMode(CENTER);
rect(350, 190, 150, 10, 10);

// helmet
stroke(0);//(180, 40, 40);
strokeWeight(3);
fill(220, 60, 60);
arc(350, 185, 140, 155, PI, TWO_PI);//high light

//ear protector
rect(425,210,40,25,10);
rect(427,235,40,25,10);
rect(420,180,45,35,10);

//symbol
  fill(255, 215, 0);
  ellipse(320, 170, 30, 30);
  ellipse(350, 170, 30, 30);
  ellipse(380, 170, 30, 30);
  ellipse(320, 140, 30, 30);
  ellipse(350, 140, 30, 30);
  ellipse(380, 140, 30, 30);
}


//legFront
void drawLegs() {
  stroke(0);
  strokeWeight(3);
  drawLeg(500, 280);//back
  drawLeg(420, 300);//Rightfront
  drawLeg(300, 250);//Leftfront
}


//LegBack
void drawBackLegs() {
  stroke(0);
  strokeWeight(3);
  drawLeg(380, 250);//Back
}



void drawLeg(float x, float y) {
  rectMode(CENTER);
  // leg
  fill(30);
  ellipse(x, y, 40, 55);
  //legCover
  stroke(60);
  strokeWeight(2);
  line(x - 12, y - 10, x + 12, y - 2);
  line(x - 12, y - 2,  x + 12, y + 6);
  line(x - 12, y + 6,  x + 12, y + 14);
  //foot
  fill(70, 140, 100);
  ellipse(x-6, y+68, 42, 22);
  // kuijia
  stroke(0);
  strokeWeight(3);
  fill(180, 0, 0);
  rect(x, y + 38, 35, 44, 6);
  rect(x,y-10,44,20,20);
  rect(x,y+5,44,20,20);
  // highlight
  fill(200, 40, 40);
  rect(x, y + 30, 18, 10, 4);
  // nial
  fill(255, 215, 0);
  ellipse(x, y + 28, 4, 4);
  ellipse(x, y + 38, 4, 4);
  ellipse(x, y + 48, 4, 4);
  // Toe nail
  fill(240);
  triangle(x-18, y + 70, x-28, y + 68, x-22, y + 78);
  triangle(x-10, y + 74, x-20, y + 72, x-14, y + 82);
  triangle(x -2,  y + 76, x-12, y + 74, x-6,  y + 84);
}
