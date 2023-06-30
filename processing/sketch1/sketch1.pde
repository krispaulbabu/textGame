PShape rectangle; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//

void setup() {
  size(850, 550);
  background(0, 0, 0);
  PFont font;
  font = createFont("VT323/VT323-Regular.ttf", 128);
  textFont(font);
  textSize(40);
}

int i=0;
int textPositionX=30;
int textPositionY=50;
int index=0;
boolean mouseHasBeenClicked=false;

void draw() {
  String [] lines= loadStrings("lines.txt");
  String line=lines[index];
  if (i<line.length()) {
    fill(0, 0, 0);
    stroke(0);
    rect(textPositionX, textPositionY-20, 10, 20);
    fill(0, 255, 0);
    text(line.charAt(i), textPositionX, textPositionY);
    rect(textPositionX+20, textPositionY-20, 10, 20);
  }
  textPositionX+=20;
  if (textPositionX>750) {
    if (line.charAt(i+1)==' ') {
      i+=1;
    }
    fill(0, 0, 0);
    rect(textPositionX, textPositionY-20, 10, 20);
    textPositionX=30;
    textPositionY+=50;
  }

  i+=1;
  if (i==line.length()) {
    if (index==lines.length-1) {
      noLoop();
    }
    fill(0, 0, 0);
    rect(textPositionX, textPositionY-20, 10, 20);
    fill(0, 255, 0);
    index+=1;
    i=0;
    textPositionX=30;
    textPositionY+=50;
  }
  delay(50);
  
  ScrollBar s1;
  s1= new ScrollBar(800,30,15,30);
  s1.display();
  s1.barClicked();
  //println(mouseHasBeenClicked);
}

void mousePressed(){
  mouseHasBeenClicked=true;
}

void mouseReleased(){
  mouseHasBeenClicked=false;
}
