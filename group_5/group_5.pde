public class Ball{
  float position_x,  position_y;
  float size;
  float area;
  
  Ball(float pos_x,float pos_y){
    position_x = pos_x;
    position_y = pos_y;
    size = random(1,100);
  }

  void draw(){
    rect(position_x,position_y,size,size);
  }
  
  float get_area(){
    area = size*size;
    return area;
  }
}


 
int n = 7;
Ball[] balloon = new Ball[n];

void setup(){
  size(600,600);
  int i;
  for(i=0; i<n; i++){
    balloon[i] = new Ball((i+1)*70,(i+1)*70);
  }
}
void draw(){
  int i;
  float area = 0;
  for(i=0; i<n; i++){
    balloon[i].draw();
    area += balloon[i].get_area();
  }
  print(area+"\n");
}
