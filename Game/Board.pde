public class Board{
   ArrayList<Square>board = new ArrayList<Square>(); 
   int xPos,yPos;
   ArrayList<Integer> legalMoves = new ArrayList<>();   
   
//     xPos = 180 + (80 * x);
//     yPos = 680 - (80 * i);
   public Board(){
     for (int i = 0; i < 8; i++){
      for (int x = 0; x < 8; x++){
        board.add(new Square(x, i, new None()) );
      }
     }
   }
   public void promote(int index, String side){
     
     int x = index % 8;
     int y = index / 8;
     board.set(index, new Square(x, y, new Queen(side, x, y)) );
   }
   
   public void setBoard(){
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
   public void testSet(){
      board.set(26, new Square(2, 3, new Pawn("white", 2, 3)) ); 
   }
   
   public boolean hasKings(){
     
     int count = 0;
     for (int i = 0; i < board.size();i++){
       if (board.get(i).whatPiece().name.equals("King")){
         count++;
       }
     }
     return (count == 2);
   }
   
   public String getInfo(int index){
     if (index == -1){
        return "-1"; 
     }
     return board.get(index).getColor();
   }
   
   public Square getSquare(int index){
     return board.get(index); 
      
   }
   public void unColorAll(){
     for (int x = 0; x < 64; x++){
        board.get(x).unslct(); 
        board.get(x).unLegal(); 
     } 
   }
   public void colorSquare(int current){
     if (current > -1){
        board.get(current).slct(); 
        legalMoves = board.get(current).whatPiece().howMove(current, board);
     
        for (int i = 0; i < legalMoves.size();i++){
          board.get(legalMoves.get(i)).makeLegal(); 
        }
     }
     //piece legal moves
     
     
   }
   
   public ArrayList<Integer> legalMove(int current){
     return board.get(current).whatPiece().howMove(current, board);       
   }
   public int[] coord(int index){
     int[] result = new int[2];
     result[1] = index/8;
     result[0] = index % 8;
     return result;
   }
   public void movePiece(int current, int New, Square oldSquare, Piece piece){
     int[] newC = coord(New);
     int[] oldC = coord(current);
     if (piece.name.equals("Pawn")){
       board.set(New, new Square(newC[0], newC[1], new Pawn(oldSquare.getColor(), newC[0], newC[1])) );
     }
     if (piece.name.equals("Rook")){
       board.set(New, new Square(newC[0], newC[1], new Rook(oldSquare.getColor(), newC[0], newC[1])) );
     }
     if (piece.name.equals("Queen")){
       board.set(New, new Square(newC[0], newC[1], new Queen(oldSquare.getColor(), newC[0], newC[1])) );
     }
     if (piece.name.equals("King")){
       board.set(New, new Square(newC[0], newC[1], new King(oldSquare.getColor(), newC[0], newC[1])) );
     }
     if (piece.name.equals("Knight")){
       board.set(New, new Square(newC[0], newC[1], new Knight(oldSquare.getColor(), newC[0], newC[1])) );
     }
     if (piece.name.equals("Bishop")){
       board.set(New, new Square(newC[0], newC[1], new Bishop(oldSquare.getColor(), newC[0], newC[1])) );
     }
     board.set(current, new Square(oldC[0], oldC[1], new None()) );     
   }
   
   public boolean canMove(int index){
     if (board.get(index).hasPiece()){
       return board.get(index).canMoveS();
     }
     return false;
   }
   
    public boolean canCap(Square other){
      if (whiteTurn && other.getColor().equals("black")){
        return true;    
      }
      
      if (!whiteTurn && other.getColor().equals("white")){
         return true; 
      }
      return false; 
    }
    
   //new Piece(180 + (80 * x), 680 - (80 * y), WPawn)
   void drawBoard(){
     for (Square s : board){
       s.display();
     }
     //just for testing:
     if (devSight){
       for (int i = 0; i < board.size()-1;i++){
         fill(0);
         text(i, board.get(i).getPosX(),board.get(i).getPosY()+40); 
       }
     }
   }
     
}
 
