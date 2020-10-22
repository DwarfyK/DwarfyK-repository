PImage BondFirst;
PImage BondSecond;
//New comment
float x = 2;
float y = 4;
float a = 0;
float b = 0;
float jb = -2;

boolean showBondPointing = false;
boolean RedCircle = false;

import processing.sound.*;
SoundFile file;
import processing.sound.*;
SoundFile file2;

void setup() {
  size (1600,900);
  BondFirst = loadImage("BigBond.png");
  BondSecond = loadImage("BondGun.png");
  file = new SoundFile(this,"Guner.mp3");
  file2 = new SoundFile(this,"Themer.mp3");
  file2.play();
}
 
 void draw() {
   clear();
   
   if (x < 800) {
   x = x + 4;
   }
 
   y = y + 0;
   a = a + 0;
   b = b + 0;
   println(jb);
   
   if (RedCircle == true){ //Hvis cirklen skal være rød
     fill(255,0,0);
     ellipse (x, 450, 700, 700); //tegn rød cirkel
   } else { //Hvis cirklen IKKE skal være rød, tegfn hvid ccirkel
     ellipse (x, 450, 700, 700); //tegn hvid cirkel
     image(BondFirst,400,1000 + jb); //tegn OG james bond
   }
   
   if (jb > -900) {
     jb = jb - 3;
   } else {
     textSize(32);
     text("Press u",10, 30);
   }
   
   
   if (showBondPointing == true){
     BondSecond.resize(800, 600);
     image(BondSecond,450,150);
   }
  
 }
 void keyPressed(){
   if(key == 'u'){
     showBondPointing = true;
      RedCircle = true;
      file.play();
   }
 }
