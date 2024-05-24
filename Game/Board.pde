public class Board{
   ArrayList<Square>board;
   ArrayList<Piece>whitePieces;
   public Board(){
    board = new ArrayList<Square>();
    for (int i = 0; i < 8; i++){
      for (int x = 0; x < 8; x++){
        if ((x + i) % 2 == 0){
          board.add(new Square(x, i, "dark")); 
         }
         else{
          board.add(new Square(x, i, "light")); 
         }
      }
    }
    
   }
   
   void drawBoard(){
     for (Square s : board){
       s.display();
       if (s.rank == 1){
         whitePieces.add(new Piece(s.getPosX(), s.getPosY(),  "pawn", WPawn));
       }
     }
     
   }
 
}
