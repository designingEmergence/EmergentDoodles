Doodler doodler;

int gridsize = 20;
color b = color(44,108,175);
//color b = color(148,207,237);
void setup(){
  frameRate(25);
  background(b);
  size(1280,720);
  drawGrid();
  PVector startPos = new PVector(width/2,height/2);
  Rule[] ruleset = new Rule[2];
ruleset[0] = new Rule("[F][F+]");
ruleset[1] = new Rule("[-F][+F]");
  doodler = new Doodler(startPos,ruleset,gridsize);  
}

void draw(){  
  doodler.render();
  doodler.calculate();
  //delay(100);
  //noLoop();
  //saveFrame("frame-#####.png");
}

void mousePressed(){
  saveFrame("frame-#####.png");
} 

void keyPressed(){
 doodler.calculate();
 redraw();
}

void selfclick(){
  doodler.calculate();
  redraw();
} 

void drawGrid(){
  stroke(230);
  for(int i=0; i<=width; i+=gridsize){
   for(int j=0;j<height; j+=gridsize){
    ellipse(i,j,.7,.7);
   }
  }
  strokeWeight(8);
  stroke(255);
  line(0,0,width,0);
  line(0,0,0,height);
  line(0,height-1,width,height-1);
  line(width-1,0,width-1,height);
} 