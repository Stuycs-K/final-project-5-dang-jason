int x,y;

public class Button{
  
  public Button(int xInp, int yInp){
    x = xInp;
    y = yInp;
  }
  
  public String whichButton(){
    if (onButton 
    && (250 <= x) 
    && (x <= 550) 
    && (y>= 450) 
    && (y<= 500) ){
      return "Start";
    }
    
    return "None";
  }
  
  public int whichSquare(){
    int result = 0;
    boolean isX = false;
    boolean isY = false;
    for (int l = 0; l < 8; l++){
       int a = 180 + (80 * l);
       if (x >= a && x < a + 80){
         result += l;
         isX = true;
       }
    }
    
     for (int k = 0; k < 8; k++){
      int b = 680 - (80 * k);
      if (y >= b && y <= b + 80){
         result += k * 8; 
         isY = true;
      }
     }
     if (isX && isY){
        return result; 
     }
     return -1;
  }
  
}
