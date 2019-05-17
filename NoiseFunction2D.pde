
void setup() {
  size(500, 500);
}

void draw() {
  loadPixels();
  float yoff = 0;
  for (int i = 0; i < width; i++) {
    float xoff = 0;
    for (int j = 0; j < height; j++) {
      pixels[i + (j * width)] = color( noise(xoff, yoff) * 255);
      xoff += 0.01;
    }
    yoff += 0.01;
  }
  updatePixels();
}
