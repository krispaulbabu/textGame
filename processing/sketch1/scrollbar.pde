
class ScrollBar {
  int xPosition;
  int yPosition;
  int rectWidth;
  int rectHeight;
  boolean mouseClicksBar;

  ScrollBar(int x, int y, int width0, int height0) {
    xPosition=x;
    yPosition=y;
    rectWidth=width0;
    rectHeight=height0;
  }

  void display() {
    fill(0, 255, 0);
    rect(xPosition, yPosition, rectWidth, rectHeight);
    stroke(0, 255, 0);
    strokeWeight(3);
    line(808, 30, 808, 500);
  }

  void barClicked() {
    if (mouseX>800 && mouseX<815 && mouseY>yPosition && mouseY<yPosition+rectHeight && mouseHasBeenClicked) {
      mouseClicksBar=true;
    } else {
      mouseClicksBar=false;
    }
  }
}
