int startX = 0, startY = 150, endX = 0, endY = 150;

void setup()
{
  size(300,300);
  background(0, 0, 0);
  strokeWeight(3);
}
boolean addX = true;
boolean addY = true;
boolean isHorizontal = true;

void draw()
{
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  stroke(255);
  
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
}
void mousePressed()
{
  background(0, 0, 0);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
