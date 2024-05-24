//abstract
public class Piece{
  String name;
  ArrayList<Square> result;
  int x,y;
  
  public Piece(int x, int y, String name, PImage img){
    this.name = name;
    if (name.equals("pawn")){
      image(img, x, y);
    }
  }
  
  
  
  //public abstract ArrayList<Square> howMove();
  //public abstract ArrayList<Square> howCap();
}
