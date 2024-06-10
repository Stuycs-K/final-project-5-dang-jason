public class Bishop extends Piece{
   
   public Bishop(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;   
     isPiece = true;
     if (colour.equals("black")){
        img = BBishop; 
        
     }
     else{
        img = WBishop; 
     }
   }

   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
     ArrayList<Integer> result = new ArrayList<>();
     int x = index % 8;
     int y = index / 8;
     
     int tempR = x;
     int tempL = x;
     for (int r = y + 1; r < 8; r++){
        if (tempR < 7){
           if (board.get((r * 8) + tempR + 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempR + 1).whatPiece()) ){
               break;
             }
             else{
               result.add((r * 8) + tempR + 1);    
               break;   
             }
           }
           result.add((r * 8) + tempR + 1);
        }
        
        if (tempL > 0){
           if (board.get((r * 8) + tempL - 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempL - 1).whatPiece()) ){
               break;
             }
             else{
               result.add((r * 8) + tempL - 1);    
               break;   
             }
           }
           result.add((r * 8) + tempL - 1);
        }    
        tempR++;
        tempL--;
     }
     
     tempR = x;
     tempL = x;
     for (int r = y - 1; r > 0; r--){
        if (tempR < 7){
           if (board.get((r * 8) + tempR + 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempR + 1).whatPiece()) ){
               break;
             }
             else{
               result.add((r * 8) + tempR + 1);    
               break;   
             }
           }
           result.add((r * 8) + tempR + 1);
        }
        
        if (tempL > 0){
           if (board.get((r * 8) + tempL - 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempL - 1).whatPiece()) ){
               break;
             }
             else{
               result.add((r * 8) + tempL - 1);    
               break;   
             }
           }
           result.add((r * 8) + tempL - 1);
        }    
        tempR++;
        tempL--;
     }     
     return result;
   }
}
