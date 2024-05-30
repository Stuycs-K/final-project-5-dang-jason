public class Rook extends Piece{
   
   public Rook(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     if (colour.equals("black")){
        img = BRook; 
     }
     else{
        img = WRook; 
     }
   }

}
