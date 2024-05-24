public class Board{
   ArrayList<Square>board;
   ArrayList<Piece>whitePieces;
   ArrayList<Piece>blackPieces;
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
     whitePieces = new ArrayList<Piece>();
     blackPieces = new ArrayList<Piece>();
     for (Square s : board){
       s.display();
       if (s.sqr().y == 1){
          whitePieces.add(new Piece(s.getPosX(), s.getPosY(), "WPawn", WPawn));
       }
       if (s.sqr().y == 6){
          blackPieces.add(new Piece(s.getPosX(), s.getPosY(), "BPawn", BPawn));
       }
     }
     
   }
 
}
