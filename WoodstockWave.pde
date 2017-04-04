//HBEAN's CODE posted by SMITH
//changed 'size' variable to 's' for github compatibility

float beginning = PI;
float end = TWO_PI;
float movement =0;
int s = 300;

  void setup()
{
  size (600, 600);
  strokeWeight (5);
}
void draw()
{ 
  background (0);
  stroke( random(255), random (255), random (255) );
  noFill();
  s = 80;
  while (s < 550)
  {
    end = map(sin(movement + (TWO_PI / (size/20))), -1, 1, PI, TWO_PI); 
    arc (300, 300, s, s, beginning, end);
    s=s+25;
  }
  movement = movement + PI/60;
}
