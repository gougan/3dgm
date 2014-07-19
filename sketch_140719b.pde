int pos_x = 0;
int pos_y = 0;
int sub_x = 0;
int sub_y = 0;
int main_rect_width = 50;
int main_rect_height = 50;
int back_rect_width = 400;
int back_rect_height = 400;

int screen_size_width = 640;
int screen_size_height = 480;

float distance = 0;

void setup(){
  size(screen_size_width,screen_size_height);
  pos_x = screen_size_width/2;
  pos_y = screen_size_height/2;
  sub_x = screen_size_width/2;
  sub_y = screen_size_height/2;
}

void draw(){
  background(0);
    pos_x = mouseX;
    pos_y = mouseY;

    if(pos_x - main_rect_width/2 < sub_x - back_rect_width/2){
      pos_x = sub_x - back_rect_width/2 + main_rect_width/2;
    }
    if(pos_x + main_rect_width/2 > sub_x + back_rect_width/2){
      pos_x = sub_x + back_rect_width/2 - main_rect_width/2;
    }
    if(pos_y - main_rect_height/2 < sub_y - back_rect_height/2){
      pos_y = sub_y - back_rect_height/2 + main_rect_height/2;
    }
    if(pos_y + main_rect_height/2 > sub_y + back_rect_height/2){
      pos_y = sub_y + back_rect_height/2 - main_rect_height/2;
    }

  rect(sub_x - back_rect_width/2,sub_y - back_rect_height/2,back_rect_width,back_rect_height);
  rect(pos_x - main_rect_width/2,pos_y - main_rect_height/2,main_rect_width,main_rect_height);
  
}


