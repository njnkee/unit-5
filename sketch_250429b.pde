import processing.sound.*;

// mode framework
int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

color darkPurple = #42213d;

float x, y, d;

float playx, playy, playd;
float play2x, play2y, play2d;

SoundFile fail, success, music;

// key variables
boolean aKey, sKey, dKey, wKey, upKey, downKey, leftKey, rightKey;

void setup() {
  size(1000, 1000);

  
  success = new SoundFile(this, "SUCCESS.wav");
  music = new SoundFile(this, "MUSIC.mp3"); 

  playx = width / 2;
  playy = height / 2;
  playd = 100;

  play2x = width / 2;
  play2y = height / 2;
  play2d = 100;
  
  music.loop();
}

void draw() {
  background(darkPurple);

  // player1
  strokeWeight(5);
  stroke(255);
  fill(255, 255, 0);
  circle(playx, playy, playd);

  // player2 
  strokeWeight(5);
  stroke(255);
  fill(0, 255, 255);
  circle(play2x, play2y, play2d);

  // movement logic 
  if (aKey) play2x -= 5; 
  if (dKey) play2x += 5;
  if (wKey) play2y -= 5;
  if (sKey) play2y += 5;

  if (leftKey) playx -= 5; 
  if (rightKey) playx += 5;
  if (upKey) playy -= 5;
  if (downKey) playy += 5;
  
  if (playx <= playd/2) playx = playd/2;
  if (playy <= playd/2) playy = playd/2;
}

void keyPressed() {
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased() {
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
}

// void mouseReleased() {
//   success.play(music);
