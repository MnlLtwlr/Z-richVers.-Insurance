class Robber {
  PVector pos;
  float w, h, y;
  int currentFrameCount;

  Robber(PVector _pos, float _w, float _h, PImage _robberFrames[]) {
    pos = _pos;
    w = _w;
    h = _h;
    robberFrames = _robberFrames;
    y = 100;
  }

  void show() {
    image(robberFrames[currentFrameCount], 100, y, w, h);
  }

  void update() {
    newFrame();
    y += 5;
  }

  void newFrame() {
    if (currentFrameCount < robberFrames.length - 1) {
      currentFrameCount ++;
    } else {
      currentFrameCount = 0;
    }
  }
}
