void intro2() {
  background (lightMoss);
  fill(darkThistle);
  tactile(150, 350, 400, 500);
  rect(150, 400, 200, 100, 7);
  tactile(450, 650, 400, 500);
  rect(450, 400, 200, 100, 7);
  fill(255);
  textFont(font1);
  textSize(50);
  text("1 player", 250, 445);
  text("2 players", 550, 445);
}

void intro2Clicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
    AI = true;
    minim = new Minim (this);
    click = minim.loadFile("click.mp3");
    click.play();
  }

  if (mouseX > 450 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
    AI = false;
    minim = new Minim (this);
    click = minim.loadFile("click.mp3");
    click.play();
  }
}
