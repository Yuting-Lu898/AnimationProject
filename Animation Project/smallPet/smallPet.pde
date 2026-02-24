ArrayList<PVector> balls = new ArrayList<PVector>();
int oX = 300;
int oY = 580;
int hold = -1,time=0;
int r = 10;
void setup() {
  size(600, 600);
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
}

void mousePressed() {
  PVector oBall = balls.get(time);
  float d = dist(mouseX, mouseY, oBall.x, oBall.y);
  if (d < r) {
    hold = 0;
    balls.add(0, new PVector(oX, oY));
    time++;
  }
}
void mouseReleased() {
  hold = -1;
  //if(ok%2==0)time++;
}

void here(){
  fill(255,0,0);
  textSize(20);
  text("Turtle food->",180,585);
}

void move(){

}
