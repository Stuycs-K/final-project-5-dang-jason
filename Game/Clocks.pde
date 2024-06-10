public class Clocks{
   public Clocks(boolean isWhite, int seconds){
     

     String single;
       if (seconds%60 < 10){
         single = seconds%60 + "0"; 
       }
       else{
         single = seconds%60 + "";; 
       }
     if (!isWhite){
       fill(color(176, 188, 209));
       rect(180, 70, 150, 40);
       fill(0);
       text(seconds/60 + ":" + single, 180, 100); 
     }
     else{
       fill(color(176, 188, 209));
       rect(720, 785, 150, 40);
       fill(0);
       text(seconds/60 + ":" + single, 720, 820);        
     }
   }
}
