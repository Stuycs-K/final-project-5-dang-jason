boolean isGame = false;
static boolean onButton = true;
void setup(){
  size(800, 1000);
  rect(250, 450, 300, 50);
  textSize(44);
  fill(100);
  text("Start New Game", 250, 490);
  
  
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
