public abstract class Piece{
  String name;
  ArrayList<Square> result;
  int x,y;
  boolean isPiece = false;
  PImage img;
  String side = "";
  //get rid of this boolean
  boolean hasMoved = false;
  
   public void display(){
     image(img, x, y);
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
      
  //public abstract ArrayList<Square> howMove();
  //public abstract ArrayList<Square> howCap();
}
