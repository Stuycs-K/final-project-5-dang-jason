public class Square{
    color c;
    PVector position;
    public Square(int file, int rank, String colour){
      if (colour.equals("light")){
         c = color(250, 240, 210); 
      }
      else{
         c = color(190, 160, 70); 
      }
      position = new PVector(200 + (50 * file), 600 - (50 * rank));
    }
    
    
    void display(){
       fill(c);
       noStroke();
       square(position.x, position.y, 50);
    }
}
