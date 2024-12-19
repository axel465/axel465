int spaceshipX;
int bulletx = -10;
int bullety = -10;
boolean bulletFired = false;

void setup(){
  size(800,800);
  spaceshipX = width / 2;
}

void draw(){
  background(0);
  fill(0,255,0);
  rect(spaceshipX,height - 40,40,20);
  fill(255,0,0);
  for(int n = 0; n < 5; n++){
  rect(n * 60 + 50,50,40,40);
  }
  
  if (bulletFired){
  fill(255);
  rect(bulletx,bullety, 5, 10);
  bullety -= 5;
  if (bullety < 0){
  bulletFired = false;
  }
 }
}

void keyPressed(){
  if(keyCode == LEFT && spaceshipX > 0){
    spaceshipX -= 10;
}   else if (keyCode == RIGHT && spaceshipX < width - 40) {
    spaceshipX += 10;
}   else if (key == ' ') {
    if (!bulletFired) {
      bulletFired = true;
      bulletx = spaceshipX + 20;
      bullety = height - 40;
    }
  }
}
