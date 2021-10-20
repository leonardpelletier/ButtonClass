//Len Pelletier
//Oct 20, 2021
//Button class
boolean mouseReleased;
boolean wasPressed;

Button blueButton, greenButton, pinkButton, blackButton;
color bkg;

//color pallette
color blue   = #28E7ED;
color green  = #CEF255;
color pink   = #F76DDC;
color yellow = #FFF387;
color black  = #000000;
color white  = #FFFFFF;

void setup() {
  size(800, 800);
  bkg = white;
  blueButton  = new Button("BLUE",  200, 200, 200, 150, blue,  pink);
  greenButton = new Button("GREEN", 200, 400, 200, 150, green, yellow);
  pinkButton  = new Button("PINK",  400, 650, 600, 200, pink,  blue);
  blackButton = new Button("BLACK", 550, 300, 400, 350, black, white);
}

void draw() {
  //mousePressed
  //!mousePressed
  click();
  
  
  background(bkg);
  blueButton.show();
  greenButton.show();
  pinkButton.show();
  blackButton.show();
 
  if (blueButton.clicked) {
     bkg = blue; 
  }
  if (greenButton.clicked) {
     bkg = green; 
  }
  if (pinkButton.clicked) {
     bkg = pink; 
  }
  if (blackButton.clicked) {
     bkg = black; 
  }
}


void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mouseReleased = true;
    wasPressed = false;
  }
}
