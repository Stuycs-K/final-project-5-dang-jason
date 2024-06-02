public class Square{
    color c;
    PVector position;
    int rank,file;
    Piece piece;
    String culor;
    color light = color(250, 240, 210); 
    color dark = color(190, 160, 70); 
    color red = color(220, 90, 80);
    boolean canClick;
    
    public Square(int x, int y, Piece thing){
      if ((x + y) % 2 == 0){
         c = light;
      }
      else{
         c = dark;
      }
      rank = y;
      file = x;
      position = new PVector(180 + (80 * file), 680 - (80 * rank));
      piece = thing;
      culor = thing.side;
      canClick = false;
    }
    
    public Square(int x, int y){
       this(x, y, new None());
    }
    
    public void slct(){
       c = red;
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
    
    public String getColor(){
        return culor;
    }
}
