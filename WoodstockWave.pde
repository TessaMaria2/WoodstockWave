// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

float beginning = PI;
float end = TWO_PI;
float movement = 0;
int tessa = 300;
int i;



void setup() {
size(400, 400);   
stroke(255);
strokeWeight(5);
}

void draw() {
  background(90);
  //fill(random (255), random (255),random (255));
  tessa = 10;
  i=0;
  while (tessa < 290)
  {
    fill(random (255), random (255),random (255));
  end = map(sin(movement + (TWO_PI / 24*i)), -1, 1, PI, TWO_PI);
  arc(width/2, height/2, tessa, tessa, beginning, end);
  tessa=tessa+20;
  i=i+1;
  }
  movement = movement + PI/60;
}
