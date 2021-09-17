//ToxicSamurai
//Licensed under Creative Commons CC-BY-NC-SA
//Yes I named it gradient_pde.pde

void setup() {
  size(500, 500);
  noCursor();
}

void draw() {
  /*Load all of the current pixel information of our window into
   an array of pixel color values*/
  loadPixels();

  //Iterate through the pixels of the pixel list to set their color individually
  for (int i = 0; i < pixels.length; i++) {
    int x = i % width;
    int y = i / width;

    float distance = dist(x, y, mouseX, mouseY);

    pixels[i] = color(x/3, distance/3, y/3);
  }

  //Update the pixels array with our modifications and updates the window
  updatePixels();
}
