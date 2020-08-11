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
    circle(position_x,position_y,size);
  }
  
  float get_area(){
    area = 3.14*pow((size/2),2);
    return area;
  }
}

public class Block{
  float position_x,  position_y;
  float size;
  float area;
  
  Block(float pos_x,float pos_y){
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
Block[] block = new Block[n];

void setup(){
  size(600,600);
  int i;
  float area_ball = 0;
  float area_block = 0;

  for(i=0; i<n; i++){
    balloon[i] = new Ball((i+1)*70,(i+1)*70);
  }
  for(i=0; i<n; i++){
    block[i] = new Block((i+1)*70,(i+1)*70);
  }
  
  
  for(i=0; i<n; i++){
    balloon[i].draw();
    block[i].draw();
    area_ball += balloon[i].get_area();
    area_block += block[i].get_area();
  }
  print(area_ball+"\n");
  print(area_block+"\n");
}
