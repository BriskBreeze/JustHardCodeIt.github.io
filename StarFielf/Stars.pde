Star[] stars = new Star[1000];


void setup(){
  
  size(800, 800);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  
  }
}

void draw(){
  translate(width / 2, height / 2);
  background(0);
  
  for(int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
  
  }
  
  
}

class Star
{
  float x;
  float y;
  float z;
  
float pz;

Star() {
  x = random(-width, width);
  y = random(-height, height);
  z = random(width);
  pz = z;
}

void update(){
  z = z - 20;
  if(z < 1){
    z = width;
    x = random(-width, width);
    y = random(-height, height);
    pz = z;
  }
}

void show(){
  fill(255);
  noStroke();
  
  
  
  float sx = map(x / z, 0, 1, 0, width);
  float sy = map(y / z, 0, 1, 0, height);
  
  float r = map(z, 0, width, 16, 0);
  ellipse(sx, sy, r, r);

float px = map(x / pz, 0, 1, 0, width);
float py = map(y / pz, 0, 1, 0, height);
  
  pz = z;
  
  stroke(255);
  line(px, py, sx, sy);
 
  

}
}