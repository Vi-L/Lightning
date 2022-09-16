int startX = 0, startY = 150, endX = 0, endY = 150;

void setup()
{
  size(300,300);
  background(0);
  strokeWeight(3);
}
void draw()
{
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  stroke((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
  while (endX < width) {
    endX = startX + (int)(Math.random() * 9);
    endY = startY + (int)(Math.random() * 19 - 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
