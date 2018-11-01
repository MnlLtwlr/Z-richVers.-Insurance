class Backgr {
  PImage bgImg;

  Backgr(PImage _bgImg) {
    bgImg = _bgImg;
  }

  void show() {
    image(bgImg, 0, 0, width, height);
  }
}
