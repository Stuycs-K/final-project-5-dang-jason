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
    Button update = new Button(mouseX, mouseY);
    Board board = new Board();
    //game start
    if (isGame){
    int index = update.whichSquare();
      //shows what piece is clicked
      if (devSight){
      fill(bg);
      rect(75, 60, 150, 50);
      fill(0);
      text(board.getInfo(index) + index + "", 75, 100);
    }
    
  }
  
  //start menu
  if (update.whichButton().equals("Start")){
    board.drawBoard();
    onButton = false;
    isGame = true;
  }
  
}
