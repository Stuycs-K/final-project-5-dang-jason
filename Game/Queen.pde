public class Queen extends Piece{
  
   public Queen(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     isPiece = true;
     name = "Queen";
     if (colour.equals("black")){
        img = BQueen; 
     }
     else{
        img = WQueen; 
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
     for (int r = y + 1; r < 8; r++){
       if (board.get((r * 8) + x).hasPiece()){
         if (sameSide(board.get((r * 8) + x).whatPiece()) ){
            break;
         }
         else{
           result.add((r * 8) + x);    
           break;
         }
       }
       result.add((r * 8) + x);
     }
     
     for (int r = y - 1; r > -1; r--){
       if (board.get((r * 8) + x).hasPiece()){
         if (sameSide(board.get((r * 8) + x).whatPiece()) ){
            break;
         }
         else{
           result.add((r * 8) + x);    
           break;
         }
       }
       result.add((r * 8) + x);         
     }
     
     for (int c = x + 1; c < 8; c++){
       if (board.get(c + (y * 8)).hasPiece()){
         if (sameSide(board.get(c + (y * 8)).whatPiece()) ){
            break;
         }
         else{
           result.add(c + (y * 8));    
           break;
         }
       }
       result.add(c + (y * 8)); 
     }
     for (int c = x -1; c > -1; c--){
       if (board.get(c + (y * 8)).hasPiece()){
         if (sameSide(board.get(c + (y * 8)).whatPiece()) ){
            break;
         }
         else{
           result.add(c + (y * 8));    
           break;
         }
       }
       result.add(c + (y * 8)); 
     }
     return result;

   }
}
