int mousex=0,mousey=0,w,h;
int got=0;
void setup(){
size(600,600);
mousex=0;mousey=0;

}

void draw(){
  background(255);
  hold(); 
  ball(w,h,got);
}
void ball(int x,int y,int got) {
  if(got==1){
    x=mouseX;y=mouseY;
    got=0;
  }
  
  ellipse(x,y,20,20);
}
void mouseClicked(){
  got=1;
}
void mouseReleased(){
  got=0;
}
void hold(){
  
}
