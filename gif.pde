ArrayList<PImage> gif;


void setup() {
  size(400,616);
  gif = new ArrayList<PImage>(); //build the list
 int i = 0;
 while(i < 18){
   String zero = "";
   if (i < 10)zero = "0";
   gif.add(loadImage("frame_"+ zero + i + "_delay-0.07s.gif));
   i++;
 }
}

void draw() {
  PImage frame = gif.get(n);
  image (frame, 0, 0, width, height);
  n++; 
  if (n>17) n = 0;
}
