public class Board{
   ArrayList<Square>board;
   
   public Board(ArrayList<Square> board){
     for (int i = 0; i < 8; i++){
         for (int x = 0; x < 8; x++){
            if (x + i % 2 == 0){
               board.add(new Square(x, i, "dark")); 
            }
            else{
               board.add(new Square(x, i, "light")); 
            }
         }
     }
   }
 
}
