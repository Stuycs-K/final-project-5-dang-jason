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
   
   public boolean sameSide(Piece other){
     return (this.side.equals(other.side));
   }
   
  public abstract ArrayList<Integer> howMove(int index, ArrayList<Square> board);
  //public abstract ArrayList<Square> howCap();
}
