

float x = 2;
float y = 4;
float a = 3;
float b = 3;

void setup() {
  size (1600,900);

}
 
 void draw() {
   clear();
   x = x + 4;
   y = y + 4;
   a = a + 3;
   b = b + 3;
   ellipse (x, y, a, b);
 }
