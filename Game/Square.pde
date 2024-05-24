public class Square{
    color c;
    PVector position;
    int rank,file;
    public Square(int x, int y, String colour){
      if (colour.equals("light")){
         c = color(250, 240, 210); 
      }
      else{
         c = color(190, 160, 70); 
      }
      rank = y;
      file = x;
      position = new PVector(180 + (80 * file), 680 - (80 * rank));
    }
    
    
    void display(){
       fill(c);
       noStroke();
       square(position.x, position.y, 80);
    }
    
    public int getPosY(){
       return (int) position.y;
    }
    
    public int getPosX(){
       return (int) position.x;
    }
    
    public PVector sqr(){
       return new PVector(file,rank); 
    }
}
