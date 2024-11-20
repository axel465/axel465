// qwertyuiopasdfghjklzxcvbnm
// axel
String name = "United Kingdom";
String lon = "london is capital";
PImage img;
PImage aaa;
PImage eee;

void setup(){
  size(1000,1000);
  background(#36FF3E);
  img = loadImage("Flag_of_the_United_Kingdom.svg.png");
  aaa = loadImage("somethingprobably.jpeg");
  eee = loadImage("uk_map.jpeg");
}

void draw(){
  fill(0);
  rect(100,100,800,800);
  fill(#F22A4E);
  textSize(72);
  text(name,150,180);
  text(lon,150,950);
  image(img,110,210,770,450);
  image(aaa,110,680,770,100);
  image(eee,110,780,770,100);
}
