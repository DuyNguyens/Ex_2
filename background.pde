PImage animePic;
PImage flower;

void setup(){
  size(700,394);
  animePic = loadImage( "yeye.png");
  imageMode(CENTER);
  flower = loadImage("smallflwer.jpg");
}

  void draw(){
    image(animePic, width/2, height/2);
    image(flower, mouseX, mouseY);
     for (int i=0; i<10; i++) {
    float x = random(width);
    float y = random(height);
    
    for (int j=0; j<10; j++) {
      float x2 = x + j;
      float y2 = y + j * 10;
      float alphaVal = abs(255 - ((y2 / height) * 255));
      tint(255, alphaVal);
      image(flower, x2, y2);
    }
     }
  }
  
