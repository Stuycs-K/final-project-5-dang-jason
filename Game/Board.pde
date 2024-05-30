public class Board{
   ArrayList<Square>board;
   int xPos,yPos;
   
   
   
//     xPos = 180 + (80 * x);
//     yPos = 680 - (80 * i);
   public Board(){
    board = new ArrayList<Square>();
    for (int i = 0; i < 8; i++){
      for (int x = 0; x < 8; x++){
        board.add(new Square(x, i, new None()) );
      }
    }
    for (int a = 8; a < 16; a++){
       xPos = 180 + (80 * (a-8));
       board.set(a, new Square(a - 8, 1, new Pawn("white", a - 8, 1)) );
       board.set(a + 40, new Square(a - 8, 6, new Pawn("black", a - 8 , 6)) );
    }
    board.set(4, new Square(4, 0, new King("white", 4, 0)) );
    board.set(60, new Square(4, 7, new King("black", 4, 7)) );
    
    board.set(3, new Square(3, 0, new Queen("white", 3, 0)) );
    board.set(59, new Square(3, 7, new Queen("black", 3, 7)) );
    
    board.set(0, new Square(0, 0, new Rook("white", 0, 0)) );
    board.set(7, new Square(7, 0, new Rook("white", 7, 0)) );
    board.set(56, new Square(0, 7, new Rook("black", 0, 7)) );
    board.set(63, new Square(7, 7, new Rook("black", 7, 7)) );
    
    board.set(1, new Square(1, 0, new Knight("white", 1, 0)) );
    board.set(6, new Square(6, 0, new Knight("white", 6, 0)) );
    board.set(57, new Square(1, 7, new Knight("black", 1, 7)) );
    board.set(62, new Square(6, 7, new Knight("black", 6, 7)) );    
    
    board.set(2, new Square(2, 0, new Bishop("white", 2, 0)) );
    board.set(5, new Square(5, 0, new Bishop("white", 5, 0)) );
    board.set(58, new Square(2, 7, new Bishop("black", 2, 7)) );
    board.set(61, new Square(5, 7, new Bishop("black", 5, 7)) );
   }
   
   
   //new Piece(180 + (80 * x), 680 - (80 * y), WPawn)
   void drawBoard(){
     for (Square s : board){
       s.display();
     }
     //just for testing:
     if (devSight){
       for (int i = 0; i < board.size();i++){
         fill(0);
         text(i, board.get(i).getPosX(),board.get(i).getPosY()+40); 
       }
     }
   }
     
}
 
