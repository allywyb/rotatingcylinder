import processing.dxf.*;

import controlP5.*;
import peasy.*;
PeasyCam cam;

PVector[][] vp;
int layer = 6;
int section = 8;
float r = 100;
float cyHigth = 50;

float k=10;
int m=10;
int rot=18;

ControlP5 bar;



void setup(){
  background(25);
size(800,800,P3D);
  //cam = new PeasyCam(this, 10);
  //pushMatrix();
  //translate(width/2,0,20);
  cam = new PeasyCam(this, 400);
  //cam.setMinimumDistance(-200);
  //cam.setMaximumDistance(500);
  

  UI();
  
  
}

void draw(){

  background(0);
  cam.beginHUD();
  bar.draw();
  cam.endHUD();
    if (mouseX<330 && mouseY<450) {
    cam.setActive(false);
  } else {
    cam.setActive(true);
  }
  
    buildCylinder();
  
  
    displayCylinder();
  
//    if (mouseX<300 && mouseY<200) {
//    cam.setActive(false);
//  } else {
//    cam.setActive(true);
//  }
//}
  
  fill(#F3F5BC,160);
  
//translate(width/2,height/2,-200);
  //rotateY(map(mouseX, 0, width, -PI, PI));
  //rotateX(map(mouseY, 0, height, -PI, PI));
//  for(int i =0 ;i< m; i++ ){
//  beginShape(TRIANGLE_FAN);
////vertex(0,0+i*5,-30);
////vertex(0,10+i*5,-30);
////vertex(10*k,10+i*5,-30);
////vertex(10*k,0+i*5,-30);
////vertex(10,60+i*5,30);
////vertex(10,80+i*5,-30);
////vertex(0,0+i*5,-30);


//endShape();
  }



//
void buildCylinder(){
  vp = new PVector[layer][section];
  float angle = TWO_PI/section;
  
  for(int i = 0; i <layer; i ++){
    for(int j = 0; j < section; j ++){
      if(i%2==0){
        
        vp[i][j] = new PVector(r*cos(angle*j+radians(rot)*i)/sqrt(i), r*sin(angle*j+radians(rot)*i)/sqrt(i), cyHigth*i);
      }
      else{
      vp[i][j] = new PVector(r*cos(angle*j)/sqrt(sqrt(i)), r*sin(angle*j)/sqrt(sqrt(i)), cyHigth*i);
      }
    }
  }
  }
 //
  void displayCylinder(){
  
  //strokeWeight(1);
  //stroke(255);
  noStroke();

   for(int i = 0; i <vp.length-1; i ++){
    for(int j = 0; j < vp[0].length; j ++){
      fill(j*8+60);
      beginShape(QUAD_STRIP);
      //rotateX(radians(i));
//rotate(radians(15));


      vertex(vp[i][j].x, 
             vp[i][j].y, 
             vp[i][j].z);
      
      vertex(vp[i][(j+1)%vp[0].length].x, 
             vp[i][(j+1)%vp[0].length].y, 
             vp[i][(j+1)%vp[0].length].z);
             
 //rotate(radians(15));            
   
       vertex(vp[i+1][j].x, 
             vp[i+1][j].y, 
             vp[i+1][j].z);
                
      vertex(vp[i+1][(j+1)%vp[0].length].x, 
             vp[i+1][(j+1)%vp[0].length].y, 
             vp[i+1][(j+1)%vp[0].length].z);
             
      // vertex(vp[i+1][j].x, 
      //       vp[i+1][j].y, 
      //       vp[i+1][j].z);
      //vertex(vp[i][(j+1)%vp[0].length].x, 
      //       vp[i][(j+1)%vp[0].length].y, 
      //       vp[i][(j+1)%vp[0].length].z);
  
      
      //vertex(vp[i][(j+1)%vp[0].length].x, 
      //       vp[i][(j+1)%vp[0].length].y, 
      //       vp[i][(j+1)%vp[0].length].z);
      //vertex(vp[i+1][j].x, 
      //       vp[i+1][j].y, 
      //       vp[i+1][j].z);
      //vertex(vp[i+1][(j+1)%vp[0].length].x,
      //       vp[i+1][(j+1)%vp[0].length].y, 
      //       vp[i+1][(j+1)%vp[0].length].z);
      endShape(CLOSE);
    }
    }
  
  

  //for(int i = 0; i < vp.length-1; i ++){
  //  for(int j = 0; j < vp[0].length-1; j ++){
  //    strokeWeight(5);
  //    stroke(255,0,255);
  //    point(vp[i][j].x, vp[i][j].y, vp[i][j].z);
  //  }
  //}
  
}
