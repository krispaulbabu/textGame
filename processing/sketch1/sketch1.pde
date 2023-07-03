PImage wholeThing; //<>//

void setup() {
  size(800, 500);
  surface.setResizable(true);
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
String line="";

void draw() {

  //load the strings in the lines.txt file
  String [] lines= loadStrings("lines.txt");
  String line=lines[index];

  //write the lines onto the screen
  if (i<line.length()) {
    fill(0, 0, 0);
    stroke(0);
    rect(textPositionX, textPositionY-20, 10, 20);
    fill(0, 255, 0);
    text(line.charAt(i), textPositionX, textPositionY);
    rect(textPositionX+20, textPositionY-20, 10, 20);
  }
  textPositionX+=20;

  //handle when the text would pop out of the screen
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

  // end loop if there is no more lines to print out
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

  if (textPositionY>450) {
    wholeThing=get(0, 0, width, height);
    set(0, -20, wholeThing);
    textPositionY-=20;
  }

  delay(30);
}
