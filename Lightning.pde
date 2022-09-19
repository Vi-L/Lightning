int startX = 0, startY = 150, endX = 0, endY = 150;

void setup()
{
  size(300,300);
  background(68, 250, 236);
  strokeWeight(3);
}
void draw()
{
  //background(0);
  //stroke((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
  stroke(255, 255, 255);
  strokeWeight(10);
  endX = startX + (int)(Math.random() * 9);
  endY = startY + (int)(Math.random() * 19 - 9);
  line(startX, startY, endX, endY);
  stroke(146,180,178);
  strokeWeight(10);
  line(endX, endY+5, endX, height);
  startX = endX;
  startY = endY;
}
void mousePressed()
{
  background(68,250,236);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
