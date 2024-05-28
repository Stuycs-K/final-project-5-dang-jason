public class Board{
   ArrayList<Square>board;
   
   public Board(){
    board = new ArrayList<Square>();
    for (int i = 0; i < 8; i++){
      for (int x = 0; x < 8; x++){
        
        if (i == 1){
          board.add(new Square(x, i, new Piece(180 + (80 * x), 680 - (80 * i), WPawn) ) );
        }
        else if(i == 6){
          board.add(new Square(x, i, new Piece(180 + (80 * x), 680 - (80 * i), BPawn) ) );
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
 
