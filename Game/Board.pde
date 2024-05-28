public class Board{
   ArrayList<Square>board;
   int xPos,yPos;
   public Board(){
    board = new ArrayList<Square>();
    for (int i = 0; i < 8; i++){
      for (int x = 0; x < 8; x++){
        xPos = 180 + (80 * x);
        yPos = 680 - (80 * i);
        if (i == 1){
          board.add(new Square(x, i, new Piece(xPos, yPos, WPawn) ) );
        }
        
        else if(i == 6){
          board.add(new Square(x, i, new Piece(xPos, yPos, BPawn) ) );
        }
        
        else if(x == 2 && i == 0){
          board.add(new Square(x, i, new Piece(xPos, yPos, WBishop) ) );
        }
        
        else {
          board.add(new Square(x, i, new Piece() ) ); 
        }
      }
    }
    
   }
   //new Piece(180 + (80 * x), 680 - (80 * y), WPawn)
   void drawBoard(){
     for (Square s : board){
       s.display();
     }
   }
     
}
 
