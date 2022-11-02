float r, t;
void setup() {
  size(720, 720);
  stroke(-1);
}
void draw() {
  clear();
  t+=.008;
  for (r=0; r<6; r+=PI/4)
    f(360, 360, r, 120);
}
void f(float x, float y, float r, float d) {
  if (d>3) {
    line(x+=cos(r)*d, y-=sin(r)*d,x,y);
    f(x, y, r+y/90+t, d/1.5);
    f(x, y, r-y/90-t, d/1.5);
  }
}
