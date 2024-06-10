public class Pawn extends Piece{
   boolean hasMoved = false; 
   
   public Pawn(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     isPiece = true;
     if (colour.equals("black")){
        img = BPawn; 
     }
     else{
        img = WPawn; 
     }
   }
   
   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
     int x = index % 8;
     int y = index / 8;
     ArrayList<Integer> result = new ArrayList<>();
     if (side.equals("black")){
         if (!board.get(index-8).hasPiece()){
           result.add(index-8);
           if (index/8 == 6){
             if (!board.get(index-16).hasPiece()){
                result.add(index-16); 
             }
           }
         }
       if (board.get(index-9).hasPiece() && (x != 0) && !(sameSide(board.get(index-9).whatPiece()) )){
         result.add(index-9); 
       }
       if (board.get(index-7).hasPiece() && (x != 7) && !(sameSide(board.get(index-7).whatPiece()) )){
         result.add(index-7); 
       }       
     }    
     else if (side.equals("white")){
         if (!board.get(index+8).hasPiece()){
           result.add(index+8);
           if (index/8 == 1){
             if (!board.get(index+16).hasPiece()){
                result.add(index+16); 
             }
           }
         }
       if (board.get(index+7).hasPiece() && (x != 0) && !(sameSide(board.get(index+7).whatPiece()) )){
         result.add(index+7); 
       }
       if (board.get(index+9).hasPiece() && (x != 7) && !(sameSide(board.get(index+9).whatPiece()) )){
         result.add(index+9); 
       }               
     } 
     return result;
   }
   
}
