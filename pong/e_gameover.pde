void gameover () {





  if (leftscore == 3) {
    fill(0);
    stroke(255);
    rect(175, 40, 50, 50);
    rect(575, 40, 50, 50);
    textSize(50);
    fill(255);
    text(leftscore, width/4, 60);
    fill(255);
    text(rightscore, 3*width/4, 60);
    textSize(100);
    fill(255);
    text("LEFT WINS!", 400, 300);
    //restart
    tactile2(315, 515, 450, 550);
    fill(blueGreen);
    rect(300, 450, 200, 100, 7);
    //text
    textFont(font1);
    textSize(45);
    fill(255);
    text("RESTART", 400, 500);
  }

  if (rightscore == 3) {
    fill(0);
    stroke(255);
    rect(175, 40, 50, 50);
    rect(575, 40, 50, 50);
    textSize(50);
    fill(255);
    text(leftscore, width/4, 60);
    fill(255);
    text(rightscore, 3*width/4, 60);
    textSize(100);
    fill(255);
    text("RIGHT WINS!", 400, 300);
    //restart
    tactile2(315, 515, 450, 550);
    fill(blueGreen);
    rect(300, 450, 200, 100, 7);
    //text
    textFont(font1);
    textSize(45);
    fill(255);
    text("RESTART", 400, 500);
  }
}

void gameoverClicks() {

  if (mouseX > 275 && mouseX < 515 && mouseY > 450 && mouseY<550) {
    mode = INTRO;
    timer = -50;
    leftscore = 0;
    rightscore = 0;
    lefty = 300;
    righty = 300;
  }
  minim = new Minim (this);
  click = minim.loadFile("click.mp3");
  click.play();
}
