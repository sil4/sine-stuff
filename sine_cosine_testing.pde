void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  background(0);
}
int c;
int v;
float x;
float y;
int h = 50;
float s = 30.0;
float defs = s;
float min = 0;
boolean p = false;
float changingValue = 0.05;
// values for you to change if desired
void draw() {
  fill(255,0,0);
  c+=1;
  v+=5;
  x = sin(v)*c+h;
  y = cos(v)*c;
  circle(x,y,s);
  fill(0,255,0);
  x = sin(v)*c;
  y = cos(v)*c+h;
  circle(x,y,s);
  fill(0,0,255);
  x = sin(v)*c;
  y = cos(v)*c;
  circle(x,y,s);
  fill(255,255,0);
  x = sin(v)*c+h;
  y = cos(v)*c+h;
  circle(x,y,s);
  if (s <= min) {
    p = true;
  }
  if (s >= defs) {
    p = false;
  }
  if (p == true) {
    s+=changingValue;
  }
  if (p == false) {
    s-=changingValue;
  }
  if (x >= width && y >= height) {
    noLoop();
    print("finished!");
  }
}
