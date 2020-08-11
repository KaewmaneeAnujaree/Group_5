public class Ball{
  float position_x,  position_y;
  int size;
  
  Ball(float pos_x,float pos_y,int s){
    position_x = pos_x;
    position_y = pos_y;
    size = s;
  }

  void draw(){
    circle(position_x,position_y,size);
    rect(position_x,position_y,size,size);
  }
}

void draw(){
  int i;
  for(i=0; i<=6; i++){
    balloon[i].draw();
  }
  //balloon[1].draw();
  //balloon[2].draw();
}

Ball[] balloon = new Ball[7];
void setup(){ 
  size(600,600);
  int i;
  for(i=0; i<=6; i++){
    balloon[i] = new Ball((i+1)*70,(i+1)*70,70);
  }
  //balloon[1] = new Ball(100,100,100);
  //balloon[2] = new Ball(100,100,100);
}
