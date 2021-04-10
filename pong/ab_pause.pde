void pause() {
  fill(blueGreen);
  rect(80, 225, 640, 200);
  textFont(font1);
  fill(255);
  textSize(200);
  text("PAUSED", 400, 300);
}

void pauseClicks() {
  mode = GAME;
}
