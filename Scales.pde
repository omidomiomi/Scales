void setup(){
  size(400,400);
  frameRate(60);
}

void draw(){
  background(255,255,255);
  stroke(0,0,0);
  strokeWeight(2);//makes the fish repeat
for (int x = -200; x<= 500; x = x +40){
    for(int y = -200; y<=500; y = y +60){
    //if (x<=400){
     // x = x +1;
      scale(x,y);
      //if(x==400){
       // x=-200;
      //}
    //}
  }
  }
  strokeWeight(6);// makes fish eyes
  for(int z=10; z <=500; z = z +40){
    for(int l = 30;l<=500;l=l+60){
        point(z,l);
  }
  }
  stroke(3, 252, 236);
  noFill();
  arc(200,200,100,150,PI/2,(3*PI)/2);
  arc(200,200,100,150,(3*PI)/2,(5*PI)/2);
  strokeWeight(16);
  point(180,180);
  strokeWeight(6);
  beginShape();
  vertex(200,275);
  vertex(200,275);
  vertex(150,350);
  vertex(250,350);
  vertex(200,275);
  vertex(200,275);
  endShape();
}
void scale(int x , int y){
  int r = 220 + (int)(Math.random()*36);//changes fish color
  int b = 220 + (int)(Math.random()*36);
  fill(r,0,b);
  bezier(x-100,y-100,x-100,y + 50,x + 50,y-100,x+100,y+100);
  beginShape();//fish body
  curveVertex(x-100,y-100);
  curveVertex(x-100,y-100);
  curveVertex(x-25,y-75);
  curveVertex(x-20,y-20);
  curveVertex(x-20,y-20);
  endShape();
}
