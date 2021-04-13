class Score {
  int[][] score;
  
  Score() {
    score = new int[3][3];
  }
  
  void setScore(int row, int col, int val)  // sets the score to a certain column and row
  {
    score[row][col]=val;
  }
  
  int giveValue(int row, int col) // returns integer value of the score in a certain column and row
  {
    return score[row][col];
  }
  
  void scoreReset() {
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        score[i][j]=0;
      }
    }
  }
  
  boolean isEmptySquare(int row, int col) // checks if the board is empty or not
  {
    if (score[row][col]==0)
      return true;
    else
      return false;
  }
}
