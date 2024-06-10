public class Rook extends Piece{
   
   public Rook(String colour, int xPos, int yPos){
     x = 180 + (80 * xPos);
     y = 680 - (80 * yPos);
     side = colour;
     isPiece = true;
     name = "Rook";
     if (colour.equals("black")){
        img = BRook; 
     }
     else{
        img = WRook; 
     }
   }

   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
     ArrayList<Integer> result = new ArrayList<>();
     int x = index % 8;
     int y = index / 8;
     
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
