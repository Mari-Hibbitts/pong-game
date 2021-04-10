

//pong
//Marika h blk 1-3, April 9


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme;
AudioPlayer point;
AudioPlayer gameover;
AudioPlayer collide;
AudioPlayer click;





//font
PFont font1;

float fontSize;

//intro animation
float px, px2;
//text movement variables
int fx;

//colours
color thistle = #C9B1BD;
color darkThistle = #763254;
color lightMoss = #7F9172;
color blueGreen = #567568;

//timer (not score timer)
float timer;


//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;
final int INTRO2   = 5;



//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
boolean AI;
//score
int leftscore, rightscore, scoretimer;
//keyboard variables

boolean wkey, skey, upkey, downkey;

//movement
float vx, vy;


void setup () {
  size (800, 600);
  mode = INTRO;



  textAlign(CENTER, CENTER);

  //font setup
  font1 = createFont("rainyhearts.ttf", 200);
  fx = -500;
  fontSize = 200;

  //pong ball animation
  px = 55;
  px2 = 755;


  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //score
  leftscore = 0;
  rightscore = 0;
  scoretimer = 100;

  //timer
  timer = 0;

  //initilalize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;

  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;

  //movement
  vx = 5;
  vy = 5;
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == INTRO2) {
    intro2();
  } else {
    println("mode error: " + mode);
  }
}

void tactile(int a, int b, int c, int d) {
  if (mouseX > a && mouseX < b && mouseY > c && mouseY < d) {
    stroke(lightMoss);
  } else {
    stroke (255);
  }
}

void tactile2(int a, int b, int c, int d) {
  if (mouseX > a && mouseX < b && mouseY > c && mouseY < d) {
    stroke(darkThistle);
  } else {
    stroke (255);
  }
}
