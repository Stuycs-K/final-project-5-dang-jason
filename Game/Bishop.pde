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

}
