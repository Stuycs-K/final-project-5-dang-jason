boolean isGame = false;
boolean onButton = true;
boolean devSight = false;
PImage WPawn, BPawn, WQueen, BQueen, WKing, BKing, WBishop, BBishop, WKnight, BKnight, WRook, BRook, None;
color bg = color(176, 188, 209);
int lastSlct = -1;
int index = -1;
boolean whiteTurn;
boolean pieceClicked = false;
Board board = new Board();
boolean gameEnd = false;
int wSeconds,bSeconds;
int count = 60;
void setup(){
  isGame = false;
  background(bg);
  size(1000, 880);
  rect(350, 415, 300, 50);
  textSize(44);
  fill(100);
  text("Start New Game", 350, 460);
  Images images = new Images();
  images.loadImages();
  board.setBoard();
  wSeconds = 600;
  bSeconds = 600;
}

void draw(){
  if (isGame){
  count -= 1;
    if (count == 0){
      if (whiteTurn){
        wSeconds -= 1; 
      }
      else{
        bSeconds -= 1; 
      }
      count = 60;
    }
      Clocks white = new Clocks(true, wSeconds);
      Clocks black = new Clocks(false, bSeconds);
      
    if (bSeconds == 0 || wSeconds == 0){
       isGame = false; 
       gameEnd = true;
    }
  }
  else if (gameEnd){
    fill(0);
    text("Game Over!", 350, 460);      
  }
  
}


void mousePressed(){
    Button update = new Button(mouseX, mouseY);
    //game start
    if (isGame){
    board.unColorAll();
    board.drawBoard();  
    lastSlct = index;
    index = update.whichSquare();
   
    if (index > -1){
      if (board.canMove(index)){
        pieceClicked = true;
        board.colorSquare(index);
        board.drawBoard();
      }
    if (pieceClicked && (lastSlct > -1) && (board.canCap(board.getSquare(index)) || !board.getSquare(index).hasPiece() ) ){
      ArrayList<Integer> leegal = board.legalMove(lastSlct);
      for (int i = 0; i < leegal.size(); i++){
        if (index == leegal.get(i) && pieceClicked && (lastSlct > -1) && (board.canCap(board.getSquare(index)) || !board.getSquare(index).hasPiece() )   ){
          board.movePiece(lastSlct, index, board.getSquare(lastSlct), board.getSquare(lastSlct).whatPiece());
          if (index >= 56){
           if (board.getSquare(index).whatPiece().name.equals("Pawn")){
             board.promote(index, board.getSquare(index).getColor());  
           }
          }
          board.drawBoard();
          whiteTurn = !whiteTurn;
          pieceClicked = false;
        }
        
      }
     }    
    if (!board.hasKings()){
      gameEnd = true;
      isGame = false;
    }
    }
  
    
    
      //shows what piece is clicked
      if (devSight){
      fill(bg);
      rect(75, 60, 800, 50);
      fill(0);
        text("Current: " + board.getInfo(index) + index + "", 75, 100);
        text("Last: " + board.getInfo(lastSlct) + lastSlct + "", 465, 100);
    }
    
  }
  
  //start menu
  if (update.whichButton().equals("Start")){
    board.drawBoard();
    onButton = false;
    isGame = true;
    whiteTurn = true;
  }

}

void keyPressed(){
   if (key == 'r'){
    onButton = true;
    isGame = false;
    gameEnd = false;
    background(bg);
    size(1000, 880);
    fill(255);
    rect(350, 415, 300, 50);
    textSize(44);
    fill(100);
    text("Start New Game", 350, 460);
    Images images = new Images();
    images.loadImages();
    board.setBoard();
    wSeconds = 600;
    bSeconds = 600;
   }
   
   if (key == 'x'){
     wSeconds = 0;
     bSeconds = 0;
   }
}
