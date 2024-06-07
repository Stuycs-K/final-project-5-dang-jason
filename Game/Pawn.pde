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
     ArrayList<Integer> result = new ArrayList<>();
     if (side.equals("black")){
       
         if (!board.get(index-8).hasPiece()){
           result.add(index-8);
         }
         if (hasMoved == false){
           if (!board.get(index-16).hasPiece()){
              result.add(index-16); 
           }
         }
         
     }
     
     else if (side.equals("white")){
       
         if (!board.get(index+8).hasPiece()){
           result.add(index+8);
         }
         if (hasMoved == false){
           if (!board.get(index+16).hasPiece()){
              result.add(index+16); 
           }
         }
         
     }
     
     
     return result;
   }
   
}
