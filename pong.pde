int dirL, dirR = 0;
  float x = width /2;
  float y = height /2;

void setup(){
  size(1000,1000);
}

void draw(){
  background(0);  
  paddleLeft();
  paddleRight();
  ball();
  update_ball();
  
}

void paddleLeft(){
  rect(30,height / 2 + dirL ,20,80);
}

void paddleRight(){
  rect(950, height / 2 + dirR, 20, 80);
}

void keyPressed(){
  
  if(key == 'w'){
    dirL -= 20;
  }else if (key == 's'){
    dirL += 20;
  }
  
    if(key == 'o'){
    dirR -= 20;
  }else if (key == 'l'){
    dirR += 20;
  }
}

void ball(){
  ellipse(x, y, 30, 30);
}

void update_ball(){
  float xspeed = 1;
  float yspeed = 10;
  
  x = x + xspeed;
  y = y + yspeed;
  
  if (y < 0 || y > height){
    yspeed *= -1;
  }
  

}
