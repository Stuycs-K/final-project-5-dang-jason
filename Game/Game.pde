boolean isGame = false;
static boolean onButton = true;
PImage WPawn, BPawn, WQueen, BQueen, WKing, BKing, WBishop, BBishop, WKnight, BKnight;
void setup(){
  size(1000, 880);
  rect(250, 450, 300, 50);
  textSize(44);
  fill(100);
  text("Start New Game", 250, 490);
  WPawn = loadImage("Pieces/WPawn.png");
  WPawn.resize(80, 80);
}

void draw(){
    
}

void mousePressed(){
  Button update = new Button(mouseX, mouseY);
  if (update.whichButton().equals("Start")){
    Board board = new Board();
    board.drawBoard();
    
  }
}
