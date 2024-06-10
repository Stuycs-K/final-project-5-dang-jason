public class Bishop extends Piece{
   
   public Bishop(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;   
     isPiece = true;
     name = "Bishop";
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
     boolean leftDone = false;
     boolean rightDone = false;
     int tempR = x;
     int tempL = x;
     for (int r = y + 1; r < 8; r++){
        if (tempR < 7 && !rightDone){
          if (((r * 8) + tempR + 1 ) < 64){
           if (board.get((r * 8) + tempR + 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempR + 1).whatPiece()) ){
               rightDone = true;
             }
             else{
               result.add((r * 8) + tempR + 1);   
               rightDone = true;
             }
           }
           if (!rightDone){
             result.add((r * 8) + tempR + 1);
           }
          }
        }
        
        if (tempL > 0 && !leftDone){
          if ( ((r * 8) + tempL - 1) > -1){
           if (board.get((r * 8) + tempL - 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempL - 1).whatPiece()) ){
               leftDone = true;
             }
             else{
               result.add((r * 8) + tempL - 1);  
               leftDone = true;
             }
           }
           if (!leftDone){
             result.add((r * 8) + tempL - 1);
           }
        }
        }    
        tempR++;
        tempL--;
     }
     
     leftDone = false;
     rightDone = false;
     tempR = x;
     tempL = x;
     for (int r = y - 1; r >= 0; r--){
        if (tempR < 7 && !rightDone){
          if ( ((r * 8) + tempR + 1) < 64){
           if (board.get((r * 8) + tempR + 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempR + 1).whatPiece()) ){
               rightDone = true;
             }
             else{
               result.add((r * 8) + tempR + 1);    
               rightDone = true;
             }
           }
           if (!rightDone){
             result.add((r * 8) + tempR + 1);
           }
           }
        }
        
        if (tempL > 0 && !leftDone){
          if ( ((r * 8) + tempL - 1) > -1){
           if (board.get((r * 8) + tempL - 1).hasPiece()){
             if (sameSide(board.get((r * 8) + tempL - 1).whatPiece()) ){
               leftDone = true;
             }
             else{
               result.add((r * 8) + tempL - 1);   
               leftDone = true;
             }
           }
           if (!leftDone){
             result.add((r * 8) + tempL - 1);
           }
        }
        }    
        tempR++;
        tempL--;
           } 
     return result;

   }
}
