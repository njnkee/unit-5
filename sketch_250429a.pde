
color darkPurple = #42213d;

float x, y, d;

float playx, playy, 
      playd;

float play2x, play2y, 
      play2d;


//key variables ---------------------------

boolean aKey, sKey, dKey, wKey, upKey, sownKey, leftKey, rightKey;

void setup() {
  size(600,600);
  playx = width/2;
  playy = height/2;
  playd = 100;
  
  play2x = width/2;
  play2y = height/2;
  play2d = 100;
}

 void draw() {
   
   background(darkPurple);
   
   
   //player1--------------
   fill(255);
   circle(x,y,d);
   
   //player2-----------------
 }
 
void keyPressed() {
  if (key == 'a');

}

void keyReleased() {
}
