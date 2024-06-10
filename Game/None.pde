public class None extends Piece{
   
   public None(){
      isPiece = false; 
   }
   
   public void display(){ 
   }
   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
      return new ArrayList<>(); 
   }
}
