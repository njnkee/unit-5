size(500,500);
background(225);

int y = 0;
float g = 0;

while ( y <= 600  ) {
  g = map(y,0,600,255,0);
  stroke(g);
  line(0,y,600,y);
  y = y + 1;
 }
 
