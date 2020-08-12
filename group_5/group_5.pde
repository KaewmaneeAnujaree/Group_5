public class Block{
  float position_x,  position_y;
  float size;
  float area;
  
  Block(float pos_x,float pos_y,float size){
    this.position_x = pos_x;
    this.position_y = pos_y;
    this.size = size;
  }

  void draw(){
    rect(this.position_x, this.position_y, this.size, this.size);
  }
  
  float get_area(){
    area = pow(this.size, 2);
    return area;
  }
}
int n=3;
int index;
float area_block = 0;
int windowSize = 300;
Block[] block = new Block[n];

void setup(){
  size(300,300);
  background(255, 255, 255);
  for(int i=0; i<n; i++){
    block[i] = new Block(random(100,windowSize-100), random(100,windowSize-100), random(10,100));
    print(block[i].size+"\n");
  }
  for(int i=0; i<n; i++){
    block[i].draw();
    area_block += block[i].get_area();
  }
  println("area_block: "+area_block);
}
void draw(){
  if(mousePressed){
    delay(200);
    for(index = block.length-1;index>-1;index--){
      if(mouseX>block[index].position_x && mouseX< block[index].position_x+block[index].size && mouseY > block[index].position_y && mouseY< block[index].position_y+block[index].size){
        for(int i=index; i<block.length-1;i++){
          block[i] = block[i+1];
        }
        block = (Block[]) shorten(block);
        area_block = 0;
        background(255, 255, 255);
        for(int i=0; i<block.length; i++){
          block[i].draw();
          area_block += block[i].get_area();
        }
        println("area_block: "+area_block);
        break;
      }
    }
  }
}
