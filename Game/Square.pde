public class Square{
    color c;
    PVector position;
    int rank,file;
    Piece piece;
    public Square(int x, int y, Piece thing){
      if ((x + y) % 2 == 0){
         c = color(250, 240, 210); 
      }
      else{
         c = color(190, 160, 70); 
      }
      rank = y;
      file = x;
      position = new PVector(180 + (80 * file), 680 - (80 * rank));
      piece = thing;
    }
    
    public Square(int x, int y){
       this(x, y, new None());
    }
    
    
    void display(){
       fill(c);
       noStroke();
       square(position.x, position.y, 80);
       piece.display();
       
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
