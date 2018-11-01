class House {
  PVector pos;
  PImage houseImg;
  float w, h;

  House(PVector _pos, float _w, float _h, PImage _houseImg) {
    pos = _pos;
    w = _w;
    h = _h;
    houseImg = _houseImg;
  }

  void show() {
    image(houseImg, pos.x, pos.y, w, h);
  }
}
