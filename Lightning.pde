int startX = 0, startY = 150, endX = 0, endY = 150;

void setup()
{
  size(300,300);
  background(0, 0, 0);
  stroke(255);
  strokeWeight(3);
  textSize(30);
  
}
boolean addX = true;
boolean addY = true;
boolean isHorizontal = true;

int r = 255, g = 255, b = 255;

String zapText[] = {"Zap!", "Bzzt!", "Pop!", "Zip!", "Crack!"};
int zapCooldown = 0;

void draw()
{
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  
  if (isHorizontal) {
    // handle bounces off left and right side
    if (endX > width) {
      addX = false;
    } else if (endX < 0) {
      addX = true;
    }
    
    if (addX) {
      endX = startX + (int)(Math.random() * 12);
    } else {
      endX = startX - (int)(Math.random() * 12);
    }
    
    endY = startY + (int)(Math.random() * 22 - 12);
    
    // swap to vertical
    if (endY < 0 || endY > height) {
      isHorizontal = false;
    }
  } else {
    // handle bounces off the top and bottom
    
    if (endY > height) {
      addY = false;
    } else if (endY < 0) {
      addY = true;
    }
    
    if (addY) {
      endY = startY + (int)(Math.random() * 12);
    } else {
      endY = startY - (int)(Math.random() * 12);
    }
    
    endX = startX + (int)(Math.random() * 22 - 12);
    
    //swap to horizontal 
    if (endX > width || endX < 0) {
      isHorizontal = true;
    }
  }
  
  
  // draw the lightning
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  
  if (inRange(mouseX, endX, 30) && inRange(mouseY, endY, 30) && zapCooldown <= 0) {
    background(255);
    fill(r, g, b);
    line(endX, endY, mouseX, mouseY);
    ellipse(mouseX, mouseY, 15, 15);
    fill(0);
    text(zapText[(int)(Math.random() * zapText.length)], mouseX, mouseY);
    zapCooldown += 200;
  }
  zapCooldown--;
}
void mousePressed()
{
  r = (int)(Math.random() * 255);
  g = (int)(Math.random() * 255);
  b = (int)(Math.random() * 255);
  stroke(r, g, b);
}

boolean inRange(float a, float b, float range) {
  return (a > b - range && a < b + range);
}
