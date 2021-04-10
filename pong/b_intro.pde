void intro() {
  timer = timer + 1;
  if (timer == 1) {

    //music 
    minim = new Minim (this);
    theme = minim.loadFile("theme.mp3");
    theme.play();
  }
  background(lightMoss);
  stroke(255);
  strokeWeight(5);
  //tactile
  if (mouseX > 300 && mouseX < 500 && mouseY >500 && mouseY < 575) {
    stroke(lightMoss);
  } else {
    stroke (255);
  }

  //title
  fill(225);
  textFont(font1);
  textSize(fontSize);
  text("PONG", fx, 225);

  //title movement and flash
  if (timer > 70) {
    fx = fx + 5;
  }
  if (fx > 400) {
    fx = 401;
  }

  if (timer > 300) {
    fx = -500;
  }
  if (timer > 310) {
    fx = 400;
  }
  if (timer > 320) {
    fx = -500;
  }
  if (timer > 330) {
    fx = 400;
  }
  if (timer > 370) {
    fx = 300;
  }
  if (timer > 410) {
    fx = 500;
  }
  if (timer > 450) {
    fx = 400;
  }

  //font changes
  if (timer > 480) {
    fontSize = fontSize - 10;
  }
  if (timer > 510) {
    fontSize = fontSize + 18;
  }
  if (timer > 600) {
    fontSize = fontSize - 10;
    if (fontSize == 200) {
      fontSize = 201;
    }
  }



  //start button
  tactile(300, 500, 500, 575);
  fill(blueGreen);
  rect(300, 500, 200, 75, 7);

  //start button text

  textSize(50);
  fill(255);
  text("START!", 401, 530);





  //pong ball intro
  fill(255);
  stroke(255);
  circle(px, 128, 100);

  fill(255);
  circle(px2, 360, 100);

  //pong ball animation

  px = px + 5;
  px2 = px2 - 5;
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY >500 && mouseY < 575) {
    mode = INTRO2;
  }
  minim = new Minim (this);
  click = minim.loadFile("click.mp3");
  click.play();
}
