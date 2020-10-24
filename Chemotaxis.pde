 Bacteria [] germs;  
 int x1 = 0;
 int y1 = 0;
 void setup()   
 { 
   background(0);
   size(600,600);
   frameRate(20);
   smooth();
   noStroke();
   textAlign(CENTER);
   germs = new Bacteria[100];
   for(int a = 0; a<germs.length; a++){
     germs[a] = new Bacteria();
   }
 }   
 void draw(){
   background(0);
   
   for(int b = 0; b<germs.length; b++){
     germs[b].show();
     germs[b].move();
   }
     fill(255,215,0);
     textSize(30);
     text("HONEY",x1,y1);
     x1 = mouseX;
     y1 = mouseY;
    
 }
   
 class Bacteria{
   
   int x, y, size, beeColor;
   Bacteria(){
     x = 0;
     y = 0;
     size = (int)(Math.random()*20+3);
     beeColor = color(255,255,0);
     
   }
   void move(){
     if(mouseX <= x && mouseY <= y){
     x = x - (int)((Math.random()*50));
     y = y - (int)((Math.random()*50));
     }
     else if(mouseY <= y && mouseX >= x){
     y = y - (int)((Math.random()*50));
     x = x + (int)((Math.random()*50));
     }
     else if(mouseX >= x && mouseY >= y){
     x = x + (int)((Math.random()*50));
     y = y + (int)((Math.random()*50));
     }
     else if(mouseY >= y && mouseX <= x){
     y = y + (int)((Math.random()*50));
     x = x - (int)((Math.random()*50));
     }
     if(size <= 10){
       beeColor = color(204,204,0);
     }
   }
   void show(){
     fill(beeColor);
     textSize(size);
     text("bee",x,y);
     
   }
 } 
