class niveles {
  int radius = 40;
  int gamestate=1;
  float x = 50;
  float y= 490;
  float speedbolitaDA = 3;
  float speed2bolitaIA = 3;
  float speed3fondo=3;
  int direction = 1;
  float posicionfondo=0;
  int posxI=0;
  int posYI=0;

  niveles() {
  }

  void level() {
    frameRate(30);
    //
    if (gamestate == 1) {

      carabola1.menu();
     
      image(img2, posxI, posYI);
      image(imagenc1,491,550);
      image(imagenc2,380,550);
      if (mouseX>340 && mouseX < 477 && mouseY<510   && mouseY>370) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
      //
      if (mouseX>740 && mouseX < 894 && mouseY<510   && mouseY>365) {
        if (mousePressed == true)
        {
          exit();

         
        }
      }
    }
      if (gamestate==2) {
        image(imgN3, 0, 0);

        if (mouseX>376 && mouseX < 480 && mouseY<320   && mouseY>230) {
          if (mousePressed == true)
          {
            gamestate =0; // nivel 1
          }
        }
        // nivel 2
        else if (mouseX>577 && mouseX < 692 && mouseY<320   && mouseY>230) {
          if (mousePressed == true)
          {
            gamestate =3; // nivel 2
          }
        }
        // nivel 3
        else if (mouseX>787 && mouseX < 897 && mouseY<320   && mouseY>230) {
          if (mousePressed == true)
          {
            gamestate =4; // nivel 3
          }
        }
      }
      //nivel 2


      else   if (gamestate==3) {
         carabola1.jugar();
        image(imgN4, posicionfondo, 0);
      

        if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
          if (mousePressed == true)
          {
            gamestate =1;
          }
        }
        //
        if (mouseX>1160 && mouseX<1210  && mouseY>18  && mouseY<60) {
          if (mousePressed == true)
          {
            //  gamestate =3;
            posicionfondo=0;
            movimientobola=50;
          }
        }
        if (keyPressed && (key == CODED)) {// If it's a coded key}.

          if (keyCode == LEFT) { // If it's the right arrow
            posicionfondo += speed3fondo; //izquierda


            println(movimientobola);
              if  (  movimientobola<3) {

                speed=0;
              } else {


                speed=5;
              }
            }

            if (keyCode == RIGHT) { // If it's the right arrow
              posicionfondo-=speed3fondo;

              println(movimientobola);


              if (movimientobola> 1196) {
                speed=0;
              }
            
            else {

              speed=5;
            }
          
        }
      }
   
    if (abs(posicionfondo) > imgN4.width) posicionfondo = 0;
    image(imgN4, posicionfondo+imgN4.width, 0);
    image(imgN4, posicionfondo-imgN4.width, 0);
    image(imgh, 1220, 15);
    image(imgr, 1160, 15);
      carabolita.show();
        carabolita.mover();
       // carabolita.bandera();
  }
  //nivel 3
else   if (gamestate==4) {
   carabola1.jugar();
  image(imgN5, posicionfondo, 0);
  
  if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
    if (mousePressed == true)
    {
      gamestate =1;
    }
  }
  //
  if (mouseX>1160 && mouseX<1210  && mouseY>18  && mouseY<60) {
    if (mousePressed == true)
    {
      //  gamestate =3;
      posicionfondo=0;
      movimientobola=50;
    }
  }
  if (keyPressed && (key == CODED)) {// If it's a coded key}.

    if (keyCode == LEFT) { // If it's the right arrow
      posicionfondo += speed3fondo; //izquierda

      if  ( movimientobola<3) {


        speed=0;
      } 
      else {


        speed=5;
      }
    }
    if (keyCode == RIGHT) { // If it's the right arrow
      posicionfondo-=speed3fondo;

      if (movimientobola> 1196) {
        speed=0;
      }
     else {

      speed=5;
    }
  }
} 
println(posicionfondo);


if (abs(posicionfondo) > imgN5.width) posicionfondo = 0;
image(imgN5, posicionfondo+imgN5.width, 0);
image(imgN5, posicionfondo-imgN5.width, 0);
image(imgh, 1220, 15);
image(imgr, 1160, 15);
carabolita.show();
  carabolita.mover();
//carabolita.bandera();




quad(x1, 500, x1, 520, x6, 520, x6, 500);
quad(x2, 420, x22, 420, x7, 520, x72, 520);
quad(x3, 420, x3, 440, x8, 440, x8, 420);
quad(x4, 340, x4, 360, x9, 360, x9, 340);
quad(x5, 420, x5, 440, x10, 440, x10, 420);
fill(0);

/*x1=posicionfondo;
 x2=posicionfondo;
 x3=posicionfondo;
 x4=posicionfondo;
 x5=posicionfondo;
 x6=posicionfondo;
 x7=posicionfondo;
 x72=posicionfondo;
 x8=posicionfondo;
 x9=posicionfondo;
 x10=posicionfondo;*/




}
//nivel 1 
else if (gamestate==0) {
   carabola1.jugar();
  image(imgN, posicionfondo, 0);
 
  imageMode(CORNER);
  if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
    if (mousePressed == true)
    {
      gamestate =1;
    }
  }
  //
  if (mouseX>1160 && mouseX<1210  && mouseY>18  && mouseY<60) {
    if (mousePressed == true)
    {
      // gamestate =3;
      posicionfondo=0;
      movimientobola=50;
    }
  }
  if (keyPressed && (key == CODED)) {// If it's a coded key}.

    if (keyCode == LEFT) { // If it's the right arrow
      posicionfondo += speed3fondo; //izquierda
      //     x -= speed2bolitaIA;  //derecha

      // Face left

      if  ( movimientobola < 3) {
        // direction = -direction;
        //  speed2bolitaIA=0;
        speed=0;
      } else {
        // speedbolitaDA = 3;
        //speed2bolitaIA = 3;
        speed=5;
      }
    }
    if (keyCode == RIGHT) { // If it's the right arrow
      posicionfondo-=speed3fondo;
      //  x+= speedbolitaDA;

      if (movimientobola > 1196) {
        speed=0;
      } else {

        speed=5;
      }
    }
  }// gamestate
  if (abs(posicionfondo) > imgN.width) posicionfondo = 0;
  image(imgN, posicionfondo+imgN.width, 0);
  image(imgN, posicionfondo-imgN.width, 0);
  image(imgh, 1220, 15);
  image(imgr, 1160, 15);
   carabolita.show();
  carabolita.mover();
//carabolita.bandera();
}


}}
