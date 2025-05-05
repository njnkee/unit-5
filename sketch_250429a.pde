import processing.sound.*;


color darkPurple = #42213d;

float x, y, d;

float playx, playy, 
      playd;

float play2x, play2y, 
      play2d;
      
SoundFile fail,success,music;


//key variables ---------------------------

boolean aKey, sKey, dKey, wKey, upKey, sownKey, leftKey, rightKey;

void setup() {
  fail = new SoundFile(this, "FAILURE.wav");
  success = new SoundFile(this, "SUCCESS.wav");
  music = new SoundFile(this, "MUSIC.wp3");
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
   strokweight(5);
   stroke(white);
   fill(pink);
   circle(x,y,d);
   
   //player2-----------------
   strokweight(5);
   stroke(white);
   fill(lightPurple);
   circle(playx,playy,playd);
   
   if (aKey) x -= 5;
   if (dKey) x += 5;
   if (wKey) y -= 5;
   if (sKey) y += 5;
   
   if (aKey) playx -= 5;
   if (dKey) playx += 5;
   if (wKey) playy -= 5;
   if (sKey) playy += 5;
 }
 
void keyPressed() {
  if (key == 'a') aKey = true;;

}

void keyReleased() {
}



//void mouseReleased() {
  //success.play(music);
}
