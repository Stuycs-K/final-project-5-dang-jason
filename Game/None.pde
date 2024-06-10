public class None extends Piece{
   
   public None(){
      isPiece = false; 
      name = "None";
   }
   
   public void display(){ 
   }
   public ArrayList<Integer> howMove(int index, ArrayList<Square> board){
      return new ArrayList<>(); 
   }
}
