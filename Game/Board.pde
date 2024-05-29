public class Board{
   ArrayList<Square>board;
   int xPos,yPos;
   public Board(){
    board = new ArrayList<Square>();
    for (int i = 0; i < 8; i++){
      for (int x = 0; x < 8; x++){
        xPos = 180 + (80 * x);
        yPos = 680 - (80 * i);
          board.add(new Square(x, i, new Piece() ) );
      }
    }
    
   }
   
   
   //new Piece(180 + (80 * x), 680 - (80 * y), WPawn)
   void drawBoard(){
     for (Square s : board){
       s.display();
     }
     //just for testing:
     for (int i = 0; i < 64;i++){
       fill(0);
       text(i, board.get(i).getPosX(),board.get(i).getPosY()+40); 
     }
   }
     
}
 
