// Game mode
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

color darkPurple = #42213d;

float play2x, play2y;
float playx, playy;
float playd = 100; // default size

int yellowClicks = 0;
int blueClicks = 0;
String winner = "";

String targetShape = "circle"; // or "square"
int targetSize = 100; // adjustable by slider

// UI controls
boolean draggingSlider = false;
int sliderX = 300;
int sliderY = 600;
int sliderW = 300;
int sliderH = 20;

// Movement keys
boolean aKey, sKey, dKey, wKey, upKey, downKey, leftKey, rightKey;

// =====================
// SECTION: Setup & Draw
// =====================

void setup() {
  size(1000, 750);
  play2x = width / 3;
  play2y = height / 2;
  playx = 2 * width / 3;
  playy = height / 2;
  mode = INTRO;
}

void draw() {
  background(darkPurple);
  if (mode == INTRO) drawIntro();
  else if (mode == GAME) drawGame();
  else if (mode == GAMEOVER) drawGameOver();
  }
