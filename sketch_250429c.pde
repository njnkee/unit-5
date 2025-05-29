import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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

int yellowClicks = 0;
int blueClicks = 0;
String winner = "";

Minim minim;
AudioPlayer fail, success, music;

// key variables
boolean aKey, sKey, dKey, wKey, upKey, downKey, leftKey, rightKey;

void setup() {
  size(1000, 1000);

  playx = width / 2;
  playy = height / 2;
  playd = 100;

  play2x = width / 2;
  play2y = height / 2;
  play2d = 100;

  minim = new Minim(this);
  music = minim.loadFile("MUSIC.mp3");

  music.play();

  mode = INTRO;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    //Pausescreen();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("??");
  }
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
  
  if (mode == INTRO && key == ' ') {
     yellowClicks = 0;
     blueClicks = 0;
     mode = GAME;
  }
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

void mouseReleased() {

  //success.play();


  if (mode == GAME) {
    if (dist(mouseX, mouseY, playx, playy) <= playd / 2) {
      yellowClicks++;
    } else if (dist(mouseX, mouseY, play2x, play2y) <= play2d / 2) {
      blueClicks++;
    }
  }
}
