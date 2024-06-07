boolean isGame = false;
boolean onButton = true;
boolean devSight = true;
PImage WPawn, BPawn, WQueen, BQueen, WKing, BKing, WBishop, BBishop, WKnight, BKnight, WRook, BRook, None;
color bg = color(176, 188, 209);
int lastSlct = -1;
int index = -1;
boolean whiteTurn;
boolean pieceClicked = false;

void setup(){
  background(bg);
  size(1000, 880);
  rect(250, 450, 300, 50);
  textSize(44);
  fill(100);
  text("Start New Game", 250, 490);
  Images images = new Images();
  images.loadImages();
}

void draw(){
    
}


void mousePressed(){
    Button update = new Button(mouseX, mouseY);
    Board board = new Board();
    //game start
    if (isGame){
      
    lastSlct = index;
    index = update.whichSquare();
    
    
    if (board.canMove(index)){
      pieceClicked = true;
      board.colorSquare(index, lastSlct);
      board.drawBoard();
    }
    
    if (pieceClicked && (lastSlct > -1)){
      ArrayList<Integer> leegal = board.legalMove(lastSlct);
      for (int i = 0; i < leegal.size(); i++){
        if (index == leegal.get(i)){
          board.movePiece(lastSlct, index, board.getSquare(lastSlct).whatPiece()); 
          board.drawBoard();
        }
      }
      whiteTurn = !whiteTurn;
      pieceClicked = false;
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
   Board board = new Board();
   if (key == 'g'){
     board.getSquare(25).setPiece("pawn", "white");
     text("BLAHHH", 500, 500);
     board.drawBoard();
   }
}
