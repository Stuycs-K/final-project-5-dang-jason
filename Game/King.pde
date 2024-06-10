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

   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
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
     } 
     return result;
   }
}
