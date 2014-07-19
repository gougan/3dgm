int pos_x = 0;
int pos_y = 0;
int sub_x = 0;
int sub_y = 0;
int main_circle_r = 25;
int back_circle_r = 180;
float distance = 0;

void setup(){
  size(640,480);
  pos_x = 320;
  pos_y = 240;
  sub_x = 320;
  sub_y = 240;
}

void draw(){
  background(0);
    pos_x = mouseX;
    pos_y = mouseY;

    distance = calc(pos_x,pos_y,sub_x,sub_y);
    if(distance > back_circle_r - main_circle_r){
      float back_length = distance - (back_circle_r - main_circle_r);
      pos_x -= (pos_x - sub_x) * back_length / distance;
      pos_y -= (pos_y - sub_y) * back_length / distance;
    }

  ellipse(sub_x,sub_y,back_circle_r * 2,back_circle_r * 2);
  ellipse(pos_x,pos_y,main_circle_r * 2,main_circle_r * 2);
  
}

float calc(int ax,int ay,int bx,int by){
 return sqrt( (ax - bx) * (ax - bx) +  (ay - by) * (ay - by) );
}

