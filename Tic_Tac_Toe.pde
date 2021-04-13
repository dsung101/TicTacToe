// Tic Tac Toe -- Daniel Sung
int player=0; // even uses X; odd uses O
Score score; // initialize the score class
int scoreX=0; // variable for score of player 1
int scoreY=0; // variable for score of player 2
boolean gameOn=true;  // checks if game is on

void setup() {
  size(900, 1000); // 900 X 900 plane
  score = new Score(); // initializes a new score class
  gameReset();
}

void grid()
{
  background(177, 156, 217);
  stroke(20);
  line(0, 0, 900, 0);  // drawing grid
  line(0, 300, 900, 300);  // drawing grid
  line(0, 600, 900, 600);  // drawing grid
  line(300, 0, 300, 900);  // drawing grid
  line(600, 0, 600, 900);  // drawing grid
  line(0,900,900,900);  // drawing grid
  textAlign(CENTER);
  textSize(25);
  fill(200, 100, 20);
  text("TIC TAC TOE by Daniel Sung", 450, 950);  // title of project
  textSize(25);
  textAlign(CENTER);
  fill(255, 40, 0);
  text("Player X: " + scoreX, 125, 950);  // keeps track of player X score
  fill(135, 206, 235);
  text("Player O: " + scoreY, 725, 950); // keeps track of player O score

}

void draw() {  // allows mouseClicked to work and allows the grid to be drawn

}

void mouseClicked() {  
  if (gameOn) 
  {
    if (player%2==0 && score.isEmptySquare(getrow(), getCol()))
  {
    textSize(100);
    fill(255, 40, 0);
    text("X", getCol()*300+150, getrow()*300+150);
    score.setScore(getrow(), getCol(), 1); // set 1 as score for player X
    player++;
  }

  if (player%2==1 && score.isEmptySquare(getrow(), getCol()))
  {
    textSize(100);
    fill(135, 206, 235);
    text("O", getCol()*300+150, getrow()*300+150);
    score.setScore(getrow(),getCol(), 5); // set 5 as score for player O
    player++;
  }
  
  checkWinner();
  if (player>=9 && !XisWinner() && !OisWinner())
    isTie();
  println("player: " + player);
  }  
}

void isTie() // checks if game is a tie
{
    //background(255);
    textAlign(CENTER);
    textSize(50);
    fill(0,128,128);
    text("TIE - Press Space to Restart", 450,450);
    gameOn=false;
}

void keyPressed()  // resets game when space key is pressed
{
  if (key==' ' && gameOn==false)
    gameReset();
}
void checkWinner() // checks if X or O won and displays the winner screen
{
  if (XisWinner())  // displays X winner screen if X won
  {
    //background(255);
    textAlign(CENTER);
    textSize(50);
    text("X is the Winner!", 450, 450);
    text("Press Space to Restart", 450, 500);
    scoreX++;
    gameOn=false;
  }
  
  if (OisWinner()) // displays O winner screen if O won
  {
    //background(255);
    textAlign(CENTER);
    textSize(50);
    text("O is the Winner!", 450, 450);
    text("Press Space to Restart", 450, 500);
    scoreY++;
    gameOn=false;
  }
}
