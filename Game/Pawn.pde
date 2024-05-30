public class Pawn extends Piece{
   
   public Pawn(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     if (colour.equals("black")){
        img = BPawn; 
     }
     else{
        img = WPawn; 
     }
   }
   
}
