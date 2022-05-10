int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//colour variables
color plum       = #6f1d1b;
color camel      = #bb9457;
color brown      = #432818;
color lightbrown = #99582a;
color offwhite   = #ffe6a7;
color darkgreen  = #283618;
color green      = #606c38;
color red        = #9d0208;

//target variables
float x, y, d;
float vx, vy;
float leftx, lefty, leftd, rightx, righty, rightd;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

boolean AI;


void setup() {
  size(1000, 700);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  //target setup
x = 500;
y = 350;
d = 100;
vx = random(-5, 5);
vy = 0;

leftx = 0;
lefty = height/2;
leftd = 300;

rightx = 1000;
righty = height/2;
rightd = 300;

rightscore = leftscore = 0;
timer = 100;

//initialize keyboard
wkey = skey = upkey = downkey = false;




}


void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
