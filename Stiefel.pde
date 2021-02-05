PImage vol;
PImage driekwart;
PImage half;
PImage kwart;
PImage leeg;

color c = color(255,0,0);
float x;
float y;
int beerMax;
int drunk;

int temp = 0;
void setup() {
  size(540,980);
  x = width/2;
  y = height/2;
  vol       = loadImage("laars_vol.png");
  driekwart = loadImage("laars_3kwart.png");
  half = loadImage("laars_half.png");
  kwart = loadImage("laars_kwart.png");
  leeg = loadImage("laars_leeg.png");
  vol.resize(0,980);
  driekwart.resize(0,980);
  half.resize(0,980);
  kwart.resize(0,980);
  leeg.resize(0,980);
  
  beerMax = 640;
}

void draw() {
  background(255);
  if(beerMax-drunk>480) image(vol,0,0);
  if(beerMax-drunk<480 && beerMax-drunk>320) image(driekwart,0,0);
  if(beerMax-drunk<320 && beerMax-drunk>160) image(half,0,0);
  if(beerMax-drunk<160 && beerMax-drunk>0) image(kwart,0,0);
  if(beerMax-drunk<=0) image(leeg,0,0);


if(drunk<beerMax){
  fill(0);
  rect(10,10,10,beerMax);
  fill(255,255,0);
  rect(10,10+beerMax,10,-(beerMax-drunk));
}
else{
  c=(0);
}
  
}


void mouseReleased() {
  //println(beerMax-drunk);
  if(beerMax-drunk<=0)drunk=0;
  else calc_drunk();

}


void calc_drunk(){
  drunk+=int(random(0,64));
}
