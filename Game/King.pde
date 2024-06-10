public class King extends Piece{
   
   public King(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     isPiece = true;
     name = "King";
     if (colour.equals("black")){
        img = BKing; 
     }
     else{
        img = WKing; 
     }
   }
   
   public boolean inCheck(int index, ArrayList<Square> board){
     int x = index % 8;
     int y = index / 8;
     
     if (x - 2 >= 0){
       if (y - 1 >= 0){
         if (!sameSide(board.get( (y-1)*8 + x - 2 ).whatPiece()) ) {
           return true;
         }
       }
       if (y + 1 < 8) {
         if (!sameSide(board.get( (y+1)*8 + x - 2 ).whatPiece())){
           return true;
         }
       }
     }
     
     if (x - 1 >= 0){
       if (y - 2 >= 0) {
         if (!sameSide(board.get( (y-2)*8 + x - 1 ).whatPiece())){
           return true;
         }
       }
       if (y + 2 < 8) {
         if (!sameSide(board.get( (y+2)*8 + x - 1 ).whatPiece())){
           return true;
         }
       } 
     }
     
     if (x + 1 < 8){
       if (y - 2 >= 0) {
         if (!sameSide(board.get( (y-2)*8 + x + 1 ).whatPiece())){
           return true;
         }
       }
       if (y + 2 < 8) {
         if (!sameSide(board.get( (y+2)*8 + x + 1 ).whatPiece())){
           return true;
         } 
       } 
     }
     
     if (x + 2 < 8){
       if (y - 1 >= 0) {
         if (!sameSide(board.get( (y-1)*8 + x + 2 ).whatPiece())){
           return true;
         }
       }
       if (y + 1 < 8) {
         if (!sameSide(board.get( (y+1)*8 + x + 2 ).whatPiece())){
           return true;
         }  
       }
     }
 
     return false;    
   }
   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
     ArrayList<Integer> result = new ArrayList<>();
     int x = index % 8;
     int y = index / 8;
       if (y - 1 >= 0){
         if (!board.get( ((y-1) * 8 + x)).hasPiece()){
           result.add( ((y-1) * 8 + x));
         }
         if (x - 1 >= 0){
           if (!board.get( ((y - 1) * 8 + x - 1)).hasPiece()){
               result.add((y - 1) * 8 + x - 1);
           }
         }
         if (x + 1 < 8){
           if (!board.get( ((y - 1) * 8 + x + 1)).hasPiece()){
               result.add((y - 1) * 8 + x + 1);
           }
         }
       }

       if (y + 1 < 8){
         if (!board.get( ((y+1) * 8 + x)).hasPiece()){
           result.add( ((y+1) * 8 + x));
         }
         if (x - 1 >= 0){
           if (!board.get( ((y + 1) * 8 + x - 1)).hasPiece()){
               result.add((y + 1) * 8 + x - 1);
           }
         }
         if (x + 1 < 8){
           if (!board.get( ((y + 1) * 8 + x + 1)).hasPiece()){
               result.add((y + 1) * 8 + x + 1);
           }
         }
       }
     if ((x - 1 >= 0) && !(board.get( ((y * 8 + x - 1))).hasPiece() )){
       result.add(y * 8 + x - 1);
     }
     if ((x + 1 < 8) && !(board.get( ((y * 8 + x + 1))).hasPiece() )){
       result.add(y * 8 + x + 1);
     }
     
     return result;
   }
}
