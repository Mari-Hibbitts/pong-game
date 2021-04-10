void game() {
  background (lightMoss);
  stroke (255);
  strokeWeight(5);

  theme.pause();

  //center
  line(width/2, 0, width/2, height);
  //draw paddles
  fill(thistle);
  circle(leftx, lefty, leftd);
  fill(darkThistle);
  circle(rightx, righty, rightd);


  //move paddles
  if (wkey == true)lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    if (ballx > 470) {
      if (bally > righty) {
        righty = righty + 4;
      }
      if (bally < righty) {
        righty = righty - 4;
      }
    }
  }

  //limit left
  if (lefty < 100) {
    lefty = 100;
  }
  if (lefty > 500) {
    lefty = 500;
  }

  //limit right paddle
  if (righty < 100) {
    righty = 100;
  }
  if (righty > 500) {
    righty = 500;
  }


  //ball
  fill(blueGreen);
  circle(ballx, bally, balld);

  //score display
  textSize(50);
  fill(255);
  text(leftscore, width/4, 60);
  fill(255);
  text(rightscore, 3*width/4, 60);
  scoretimer = scoretimer - 1;

  //score
  if (ballx < 50) {
    rightscore++;
    minim = new Minim (this);
    point = minim.loadFile("point.mp3");
    point.play();

    ballx = width/2;
    bally = height/2;
    scoretimer = 100;
  }

  if (ballx > 750) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    scoretimer = 100;
    minim = new Minim (this);
    point = minim.loadFile("point.mp3");
    point.play();
  }

  //score win
  if (leftscore == 3 || rightscore == 3) {
    mode = GAMEOVER;
    minim = new Minim (this);
    gameover = minim.loadFile("gameover.mp3");
    gameover.play();
  }

  //movement
  if (scoretimer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //bouncing
  if (ballx < 50 || ballx > width - balld/2) {
    vx = vx * -1;
    minim = new Minim (this);
    collide = minim.loadFile("collide.mp3");
    collide.play();
  }

  if (bally < 50 || bally > height - balld/2) {
    vy = vy * -1;
    minim = new Minim (this);
    collide = minim.loadFile("collide.mp3");
    collide.play();
  }

  //paddle collision

  if (dist(ballx, bally, leftx, lefty)<=(balld/2 + leftd/2)) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
    minim = new Minim (this);
    collide = minim.loadFile("collide.mp3");
    collide.play();
  }

  if (dist(ballx, bally, rightx, righty)<=(balld/2 + rightd/2)) {
    vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
    minim = new Minim (this);
    collide = minim.loadFile("collide.mp3");
    collide.play();
  }
}


void gameClicks() {
  mode = PAUSE;
}
