class Ant{
  
  String todo;
  float theta;
  boolean blocked =false;
  Rule [] ruleset;
  
  PVector position;
  PVector heading;
  PVector len;
  PVector lenCopy;
  
  Ant(PVector _p, Rule[] r, int unit){
    position = _p;
    todo = "S";
    ruleset = r;
    len = new PVector(unit,0);
    heading = PVector.add(position,len);
    theta = PI/2;
  }
  
  boolean blocked(){
    color block = color(255);
    color test = get(int(heading.x),int(heading.y));
    if (test == block){
      blocked = true;
      //println("blocked");
    }else{
      blocked = false;
    }
    return blocked;
  }
  
  void calculate(){
    //println(position.x+" ,"+position.y);
    println(len.x+" ,"+len.y);
    heading = PVector.add(position,len);
    if(blocked()){
      todo = ruleset[1].getB();
    }else{
      todo = ruleset[0].getB();
    }
  }
    
  void render(){
    stroke(255);
    strokeWeight(2);
    //println(todo);
    for (int i=0; i<todo.length(); i++){
      char c = todo.charAt(i);
      if(c =='F'){
        translate(position.x,position.y);
        line(0,0,len.x,len.y);
        position.add(len);
      }
      else if(c == '+'){
        lenCopy = len.get();
        lenCopy.rotate(theta);
        len = new PVector(round(lenCopy.x),round(lenCopy.y));
      }
      else if (c =='-'){
        lenCopy = len.get();
        lenCopy.rotate(-theta);
        len = new PVector(round(lenCopy.x),round(lenCopy.y));
      }
      else if (c =='['){
        pushMatrix();
      }
      else if(c ==']'){
        popMatrix();
      }
      else if(c == 'J'){
        translate(position.x,position.y);
        position.add(len);
      }
    }
  }
}
  
      
      
    
