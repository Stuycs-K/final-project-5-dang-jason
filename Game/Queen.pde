public class Queen extends Piece{
  
   public Queen(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     isPiece = true;
     if (colour.equals("black")){
        img = BQueen; 
     }
     else{
        img = WQueen; 
     }
   }
   
}
