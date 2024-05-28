//abstract
public class Piece{
  String name;
  ArrayList<Square> result;
  int x,y;
  boolean isImg = false;
  PImage img;
  
  public Piece(int xPos, int yPos, PImage name){
    x = xPos;
    y = yPos;
    isImg = true;
    img = name;
  }
  
  public Piece(){
    isImg = false;
  }
  
  void display(){
    if (isImg){
      image(img, x, y);
    }
  }
  
  //public abstract ArrayList<Square> howMove();
  //public abstract ArrayList<Square> howCap();
}
