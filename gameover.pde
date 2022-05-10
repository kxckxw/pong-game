void gameover() {
  if(leftscore > rightscore) {
    background(255);
    fill(green);
    textSize(100);
    text("Green Wins", 500, 200);
    
    
  } else {
     background(255);
    fill(red);
    textSize(100);
    text("Red Wins", 500, 200);
    
  }
  
}


void gameoverClicks() {
  mode = INTRO;
  leftscore = 0;
  rightscore = 0;
  righty = 350;
  lefty = 350;
  
}
