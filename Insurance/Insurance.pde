//Initialization background values
PImage bgImg;

//Initialization house values
float houseW;
float houseH;
PVector housePos;
PImage houseImg, floorImg;

//Initialization chest values
PImage chestImg, goldImg;

//Initialization robber values
float robberW, robberH;
int robberFrameAmount = 10;
PImage robberImg1, robberImg2, robberImg3, robberImg4, robberImg5, robberImg6, robberImg7, robberImg8, robberImg9, robberImg10;
PImage[] robberFrames = new PImage[robberFrameAmount];
ArrayList<Robber> robbers = new ArrayList<Robber>();

//Initializing classes
Backgr backgr;
House house;
Robber robber;

void setup() {
  fullScreen();

  //Background definitions
  bgImg = loadImage("land.png");

  //House definitions
  houseW = (width / 9) * 4;
  houseH = (height / 9) * 4;
  housePos = new PVector((width / 9) * 2.5, (height / 9) * 2.5);
  houseImg = loadImage("roof.png");
  floorImg = loadImage("interior.png");

  //Chest definitions
  chestImg = loadImage("chest.png");
  goldImg = loadImage("gold.png");

  //Robber definitions
  robberW = 175;
  robberH = 150;
  robberImg1 = loadImage("robberFrames/0001.png");
  robberImg2 = loadImage("robberFrames/0002.png");
  robberImg3 = loadImage("robberFrames/0003.png");
  robberImg4 = loadImage("robberFrames/0004.png");
  robberImg5 = loadImage("robberFrames/0005.png");
  robberImg6 = loadImage("robberFrames/0006.png");
  robberImg7 = loadImage("robberFrames/0007.png");
  robberImg8 = loadImage("robberFrames/0008.png");
  robberImg9 = loadImage("robberFrames/0009.png");
  robberImg10 = loadImage("robberFrames/0010.png");
  PImage[] robberFrames = {robberImg1, 
    robberImg2, 
    robberImg3, 
    robberImg4, 
    robberImg5, 
    robberImg6, 
    robberImg7, 
    robberImg8, 
    robberImg9, 
    robberImg10};



  //Object creation
  backgr = new Backgr(bgImg);
  house = new House(housePos, houseW, houseH, houseImg, floorImg, chestImg, goldImg);

  for (int i = 0; i < 10; i ++) {
    robbers.add(new Robber(housePos, robberW, robberH, robberFrames));
  }
}

void draw() {
  //Repeating function

  //updating
  for (Robber rob : robbers) {
    rob.update();
  }

  //displaying
  backgr.show();
  house.show();
  robber.show();
}
