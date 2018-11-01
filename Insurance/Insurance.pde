float houseW;
float houseH;
PVector housePos;
PImage houseImg;
PImage bgImg;

Backgr backgr;
House house;

void setup() {
  fullScreen();

  //house pos and size
  houseW = (width / 8) * 3;
  houseH = (height / 8) * 3;
  housePos = new PVector((width / 8) * 2.5, (height / 8) * 2.5);
  houseImg = loadImage("house.jpg");
  bgImg = loadImage("bgImg.jpg");

  //object creation
  backgr = new Backgr(bgImg);
  house = new House(housePos, houseW, houseH, houseImg);
}

void draw() {
  //repeating function
  backgr.show();
  house.show();
}
