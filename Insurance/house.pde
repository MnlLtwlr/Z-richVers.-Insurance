class House {
  PVector pos;
  PImage houseImg;
  float w, h, chestW, chestH;
  boolean chestOpen = false;

  House(PVector _pos, float _w, float _h, PImage _houseImg, PImage _floorImg, PImage _chestImg, PImage _goldImg) {
    pos = _pos;
    w = _w;
    h = _h;
    chestW = 275;
    chestH = 275;
    houseImg = _houseImg;
    floorImg = _floorImg;
    chestImg = _chestImg;
    goldImg = _goldImg;
  }

  void show() {
    image(floorImg, pos.x, pos.y, w, h);
    if (chestOpen == true) {
      image(goldImg, (width/2)-(chestW/2), (height/2)-(chestH/2), chestW, chestH);
    } else {
      image(chestImg, (width/2)-(chestW/2), (height/2)-(chestH/2), chestW, chestH);
    }
    //image(houseImg, pos.x, pos.y, w, h);
  }
}
