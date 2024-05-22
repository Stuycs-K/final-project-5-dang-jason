public class Square{
    color c;
    PVector position;
    public Square(int file, int rank, String colour){
      if (colour.equals("white")){
         c = color(250, 240, 210); 
      }
      else{
         c = color(190, 160, 70); 
      }
      position = new PVector((width - 400)/2 + (50 * file), (height-400)/2 + (50 * rank));
    }
    
    void display(){
       fill(c);
       noStroke();
       square(position.x, position.y, 50);
    }
}
