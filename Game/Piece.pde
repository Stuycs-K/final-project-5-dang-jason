public abstract class Piece{
  String name;
  ArrayList<Square> result;
  int x,y;
  boolean isImg = false;
  PImage img;
  String side = "";
  
   public void display(){
     image(img, x, y);
   }
   
   
  //public abstract ArrayList<Square> howMove();
  //public abstract ArrayList<Square> howCap();
}
