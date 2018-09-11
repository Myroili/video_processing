import processing.video.*;
Particules[] particles;


//PImage anime;
Capture video;
Movie movie;
Particules particules;
void setup() {
  size(1280, 720);
  printArray(Capture.list());
  //anime = loadImage("anime.jpg");
  video = new Capture(this,640,480);
  video.start();
   particles= new Particules[5500];
   for(int i = 0;i<particles.length;i++){
     particles[i] = new Particules();
   }
  
  background(0);
}

 
void captureEvent(Capture video){
  video.read();
}

void draw() {
  for(int i = 0;i<particles.length;i++){
  particles[i].display();
  particles[i].move();
  }
}
