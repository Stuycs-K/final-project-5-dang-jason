public class Square{
    color c;
    PVector position;
    int rank,file;
    Piece piece;
    String culor;
    color light = color(250, 240, 210); 
    color dark = color(190, 160, 70); 
    color red = color(220, 90, 80);
    boolean canClick, hasPiece;
    boolean mLegal = false;
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
    
    public void unslct(){
      if ((file + rank) % 2 == 0){
         c = light;
      }
      else{
         c = dark;
      }
    }
    
    public void makeLegal(){
       mLegal = true; 
    }
    public void unLegal(){
       mLegal = false; 
    }
    void display(){
       fill(c);
       noStroke();
       square(position.x, position.y, 80);
       fill(52, 235, 55);
       if (mLegal){
          ellipse(position.x + 40, position.y + 40, 20, 20); 
       }
       else{
         fill(c);
         noStroke();
         square(position.x, position.y, 80);
       }
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
    
    public boolean canMoveS(){
       if (whiteTurn && culor.equals("white")){
          return true; 
       }
       if (!whiteTurn && culor.equals("black")){
          return true; 
       }
       return false;
    }
    
    public boolean hasPiece(){
      return piece.isPiece;
    }
    
    public Piece whatPiece(){
       return piece; 
    }
    
    public void setPiece(String newPiece, String team){
      if (newPiece.equals("pawn")){
        piece = new Pawn(team, file, rank);
      }
      if (newPiece.equals("")){
        piece = new None();
      }
    }
}
