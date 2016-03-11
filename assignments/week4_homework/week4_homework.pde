Walker object;
Walker object2;
Walker object3;
Walker object4;
Walker object5;
Walker object6;
Walker object7;
Walker object8;

void setup() {
  size(800,400);
  background(255,255,255);
  
  object = new Walker (random(width),random(height),"ucgen",#ff0000);
  object2 = new Walker(random(width),random(height),"ellipse",#00ff00);
  object3 = new Walker (random(width),random(height),"kare",#1ABC9C
);
  object4 = new Walker(random(width),random(height),"ellipse",#3498DB);
  object5 = new Walker(random(width),random(height),"kare",#8E44AD);
  object6 = new Walker(random(width),random(height),"kare",#8E44AD);
  object7 = new Walker(random(width),random(height),"kare",#8E44AD);
  object8 = new Walker(random(width),random(height),"kare",#8E44AD);
  
  
  
  
  
  object.chance1 = random(1);
  object.chance2 = random(1);
  object.chance3 = random(1);
  
  
  
  object2.chance1 = random(1);
  object2.chance2 = random(1);
  object2.chance3 = random(1);
  
   
  object3.chance1 = random(1);
  object3.chance2 =random(1);
  object3.chance3 = random(1);
  
   
  object4.chance1 = random(1);
  object4.chance2 = random(1);
  object4.chance3 = random(1);
  
   
  object5.chance1 =random(1);
  object5.chance2 = random(1);
  object5.chance3 =random(1);
  
   
  object6.chance1 = random(1);
  object6.chance2 =random(1);
  object6.chance3 = random(1);
  
    
  object7.chance1 =random(1);
  object7.chance2 = random(1);
  object7.chance3 = random(1);
  
    
  object8.chance1 = random(1);
  object8.chance2 = random(1);
  object8.chance3 = random(1);

}

void draw() {
  //background(30);
  object.draw();
  object2.draw();
  object3.draw();
  object4.draw();
  object5.draw();
  object6.draw();
  object7.draw();
  object8.draw();
}