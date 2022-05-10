void intro() {
  background(camel);
  
  //squares
  fill(offwhite);
  stroke(lightbrown);
  strokeWeight(5);
  tactile1(100, 500, 300, 100);
  rect(100, 500, 300, 100);
  tactile2(600, 500, 300, 100);
  rect(600, 500, 300, 100);
  
  
  
  
  //text
  fill(plum);
  textSize(150);
  text("PONG", 500, 300);
  textSize(50);
  text("2 players", 250, 540);
  text("1 player", 750, 540);
  
}


void introClicks() {
  if ( mouseX > 100 && mouseX< 400 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
    AI = false;
  }
  if ( mouseX > 600 && mouseX< 900 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
    AI = true;
  }
}



void tactile1(int x, int y, int a, int b) {
  if (mouseX>100 && mouseX<400 && mouseY>500 && mouseY<600) {
    stroke(255);
  } else {
    stroke(lightbrown);
  }
}
void tactile2(int x, int y, int a, int b) {
  if (mouseX>600 && mouseX<900 && mouseY>500 && mouseY<600) {
    stroke(255);
  } else {
    stroke(lightbrown);
  }
}
