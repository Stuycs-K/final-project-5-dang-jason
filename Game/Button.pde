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
  
  
}
