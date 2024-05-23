ArrayList<Square> board;


void setup(){
  size(800, 1000);
  board = new ArrayList<Square>();
  for (int i = 0; i < 8; i++){
    for (int x = 0; x < 8; x++){
      if ((x + i) % 2 == 0){
          board.add(new Square(x, i, "dark")); 
       }
       else{
          board.add(new Square(x, i, "light")); 
       }
    }
  }
  for (Square s : board){
     s.display(); 
  }
}
