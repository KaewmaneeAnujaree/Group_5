class Ball{
  float position_x,  position_y;
  float size;
  float area;
  
  Ball(float pos_x,float pos_y){
    position_x = pos_x;
    position_y = pos_y;
    size = random(10,100);
  }

  void draw(){
    circle(position_x,position_y,size);
  }
  
  float get_area(){
    area = 3.14*pow((size/2),2);
    return area;
  }
}

int n=3;
int index;
float area_ball = 0;
float area = 0;
int windowSize = 300;
Ball[] ball = new Ball[n];

void setup(){
  size(300,300);
  background(255, 255, 255);
  for(int i=0; i<n; i++){
    ball[i] = new Ball(random(100,windowSize-100), random(100,windowSize-100));
  }
  for(int i=0; i<n; i++){
    ball[i].draw();
    area_ball += ball[i].get_area();
  }
  println("area_ball: "+area_ball);
}
void draw(){
  if(mousePressed){
    delay(200);
    for(index = ball.length-1;index>-1;index--){
        if(mouseX>ball[index].position_x-(ball[index].size/2) && mouseX< ball[index].position_x+(ball[index].size/2) && mouseY > ball[index].position_y-(ball[index].size/2) && mouseY< ball[index].position_y+(ball[index].size/2)){
        for(int i=index; i<ball.length-1;i++){
          ball[i] = ball[i+1];
        }
        ball = (Ball[]) shorten(ball);
        area_ball = 0;
        area = 0;
        background(255, 255, 255);
        for(int i=0; i<ball.length; i++){
          ball[i].draw();
          area_ball += ball[i].get_area();
        }
        println("area_ball: "+area_ball);
        break;
      }
  }
}
}
