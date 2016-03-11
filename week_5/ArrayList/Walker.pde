class Walker {
  float chance1;
  float chance2;
  float chance3;
  
  float startX = width;
  float startY = height;
   

  float choice;
  
  color shapeColor;
  
  String type;

  PVector position;
  
  int radiusEllipse;

  Walker(float startX,float startY, String _type, color _shapeColor) {
    
    shapeColor = _shapeColor;
    type    = _type;
    chance1 = random(1);
    chance2 = random(1);
    chance3 = random(1);
    
    position = new PVector(startX, startY);
    
    radiusEllipse = 5;
    
    
    if(position.x > 0 && 
    position.x < width/2 &&
    position.y > 0 &&
    position.y < height/2) {
      shapeColor = #F39C12;
    }
  }

  void draw() {
    choice = random(1); 

    if (choice < chance1) {
      position.x = position.x - 1;
    }

    if (choice > chance1 && choice < chance2) {
      position.x = position.x + 1;
    }

    if (choice > chance2 && choice < chance3) {
      position.y = position.y - 1;
    }

    if (choice > chance3 && choice < 1.0)
    {
      position.y = position.y + 1;
    }


    if (type == "ellipse") {
      stroke(shapeColor);
      ellipse(position.x, position.y, radiusEllipse, radiusEllipse);
    }
    
    if(type == "rectangle") {
      stroke(shapeColor);
      rect(position.x, position.y,5,5);
    }
    

    if(type == "triangle") {
      stroke(shapeColor);
      pushMatrix();
      translate(position.x, position.y);
      triangle(30, 35, 38, 20, 56, 35);
      popMatrix();
    }
  }
}