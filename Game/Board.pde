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
   }
   
   
   //new Piece(180 + (80 * x), 680 - (80 * y), WPawn)
   void drawBoard(){
     for (Square s : board){
       s.display();
     }
     //just for testing:
     for (int i = 0; i < board.size();i++){
       fill(0);
       text(i, board.get(i).getPosX(),board.get(i).getPosY()+40); 
     }
   }
     
}
 
