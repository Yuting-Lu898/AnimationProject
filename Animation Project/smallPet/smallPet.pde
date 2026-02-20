int mousex=0,mousey=0;
int got=0;
void setup(){
size(600,600);
mousex=0;mousey=0;

}

void draw(){
  hold();
  ball(30,30,got);
}

void hold(){
  
}

void ball(int x,int y,int got) {
  
  if(got==1){
    x=mouseX;y=mouseY;
  }
  
  ellipse(x,y,20,20);
}
