class Walker {
  float chance1;
  float chance2;
  float chance3;

  float choice;

  String type;

  PVector position;

  Walker(float startX,float startY) {

    type    = "ucgen";
    chance1 = 0.2;
    chance2 = 0.3;
    chance3 = 0.8;
    
    position = new PVector(startX, startY);
  }

  void drive() {
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
      stroke(0);
      ellipse(position.x, position.y, 5, 5);
    }
    
    if(type == "kare") {
      stroke(#ff0000);
      rect(position.x, position.y,5,5);
    }
    
    if(type == "ucgen") {
      stroke(#00ff00);
      pushMatrix();
      translate(position.x, position.y);
      triangle(30, 35, 38, 20, 56, 35);
      popMatrix();
    }
  }
}