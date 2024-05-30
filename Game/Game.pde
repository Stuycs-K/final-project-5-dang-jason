boolean isGame = false;
boolean onButton = true;
boolean devSight = true;
PImage WPawn, BPawn, WQueen, BQueen, WKing, BKing, WBishop, BBishop, WKnight, BKnight, WRook, BRook, None;
color bg = color(176, 188, 209);

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
  //start menu
  Button update = new Button(mouseX, mouseY);
  if (update.whichButton().equals("Start")){
    Board board = new Board();
    board.drawBoard();
    onButton = false;
    isGame = true;
  }
  //game start
  if (isGame){
    String whatSquare = update.whichSquare() + "";
      if (devSight){
      fill(bg);
      rect(75, 70, 100, 50);
      fill(0);
      text(whatSquare, 100, 100);
    }
  }
}
