boolean isGame = false;
static boolean onButton = true;
PImage WPawn, BPawn, WQueen, BQueen, WKing, BKing, WBishop, BBishop, WKnight, BKnight, None;

void setup(){
  size(1000, 880);
  rect(250, 450, 300, 50);
  textSize(44);
  fill(100);
  text("Start New Game", 250, 490);
  
  WPawn = loadImage("Pieces/WPawn.png");
  WPawn.resize(80, 80);
  BPawn = loadImage("Pieces/BPawn.png");
  BPawn.resize(80,80);
  WBishop = loadImage("Pieces/WBishop.png");
  WBishop.resize(80, 80);
  BBishop = loadImage("Pieces/BBishop.png");
  BBishop.resize(80,80);
  WQueen = loadImage("Pieces/WQueen.png");
  WQueen.resize(80,80);
  BQueen = loadImage("Pieces/BQueen.png");
  BQueen.resize(80,80);
  WKing = loadImage("Pieces/WKing.png");
  WKing.resize(80,80);
  BKing = loadImage("Pieces/BKing.png");
  BKing.resize(80,80);
  WKnight = loadImage("Pieces/WKnight.png");
  WKnight.resize(80,80);
  BKnight = loadImage("Pieces/BKnight.png");
  BKnight.resize(80,80);
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
