void game() {
  background(offwhite);
  strokeWeight(10);
  stroke(lightbrown);
  line(500, 0, 500, 800);

  //score
  textSize(50);
  fill(green);
  text(leftscore, 250, 100);
  fill(red);
  text(rightscore, 750, 100);

  timer = timer - 1;

  //paddles
  fill(green);
  stroke(darkgreen);
  strokeWeight(5);
  circle(leftx, lefty, leftd);

  fill(red);
  stroke(plum);
  strokeWeight(5);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {

    if (x > 500) {
      if (y < righty) righty = righty - 5;
      if (y > righty) righty = righty + 5;
    }
  }


  //target
  stroke(lightbrown);
  strokeWeight(5);
  fill(camel);
  circle(x, y, d);

  //moving target
  if (timer < 0) {
    x = x + vx;
    y = y + vy;
  }
  //scoring
  if (x < 0) {
    rightscore++;
    x = width/2;
    y = height/2;
    timer = 100;
  }
  if (x > 1000) {
    leftscore++;
    x = width/2;
    y = height/2;
    timer = 100;
  }
  if (leftscore > 2) {
    mode = GAMEOVER;
  }
  if (rightscore > 2) {
    mode = GAMEOVER;
  }

  //bouncing target

  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }

  if (dist(leftx, lefty, x, y) <= leftd/2 + d/2) {
    vx = (x - leftx)/15;
    vy = (y - lefty)/15;
  }
  if (dist(rightx, righty, x, y) <= rightd/2 + d/2) {
    vx = (x - rightx)/15;
    vy = (y - righty)/15;
  }
  if (lefty < 150) {
    lefty = 150;
  }
  if (righty < 150) {
    righty = 150;
  }
  if (lefty > 550) {
    lefty = 550;
  }
  if (righty > 550) {
    righty = 550;
  }
} //---------------end




void gameClicks() {
  mode = PAUSE;
}
