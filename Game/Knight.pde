public class Knight extends Piece{
   
   public Knight(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     isPiece = true;
     name = "Knight";
     if (colour.equals("black")){
        img = BKnight; 
     }
     else{
        img = WKnight; 
     }
   }

   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
     ArrayList<Integer> result = new ArrayList<>();
     int x = index % 8;
     int y = index / 8;
     
     if (x - 2 >= 0){
       if (y - 1 >= 0){
         if (!sameSide(board.get( (y-1)*8 + x - 2 ).whatPiece())){
           result.add((y-1)*8 + x - 2);
         }
       }
       if (y + 1 < 8) {
         if (!sameSide(board.get( (y+1)*8 + x - 2 ).whatPiece())){
           result.add((y+1)*8 + x - 2);
         }
       }
     }
     
     if (x - 1 >= 0){
       if (y - 2 >= 0) {
         if (!sameSide(board.get( (y-2)*8 + x - 1 ).whatPiece())){
           result.add((y-2)*8 + x - 1);
         }
       }
       if (y + 2 < 8) {
         if (!sameSide(board.get( (y+2)*8 + x - 1 ).whatPiece())){
           result.add((y+2)*8 + x - 1);
         }
       } 
     }
     
     if (x + 1 < 8){
       if (y - 2 >= 0) {
         if (!sameSide(board.get( (y-2)*8 + x + 1 ).whatPiece())){
           result.add((y-2)*8 + x + 1);
         }
       }
       if (y + 2 < 8) {
         if (!sameSide(board.get( (y+2)*8 + x + 1 ).whatPiece())){
           result.add((y+2)*8 + x + 1);
         } 
       } 
     }
     
     if (x + 2 < 8){
       if (y - 1 >= 0) {
         if (!sameSide(board.get( (y-1)*8 + x + 2 ).whatPiece())){
           result.add((y-1)*8 + x + 2);
         }
       }
       if (y + 1 < 8) {
         if (!sameSide(board.get( (y+1)*8 + x + 2 ).whatPiece())){
           result.add((y+1)*8 + x + 2);
         }  
       }
     }
     
     return result;
   }
   
}
