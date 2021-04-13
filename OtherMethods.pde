int getrow() // gets row for the score board
{
  return mouseY/300;
}

int getCol() // gets column for the score board
{
  return mouseX/300;
}


void gameReset()
{
  grid();
  score.scoreReset();
  player=0;
  gameOn=true;
}

boolean XisWinner() // loops and checks if X won
{
  int sum=0;
  for (int i=0; i<3; i++)  // this loop checks the horizontals for X
  {
    for (int j=0; j<3; j++)
    {
      sum+=score.giveValue(i,j);
      if (i==0 && j==2 && sum==3)
        return true;
        
      if (i==1 && j==2 && sum==3)
        return true;
        
      if (i==2 && j==2 && sum==3)
        return true;
        
      if (j==2)
        sum=0;
    }
  }
  
  for (int i=0; i<3; i++)  // this loop checks the verticals for X
  {
    for (int j=0; j<3; j++)
    {
      sum+=score.giveValue(j,i);
      if (i==0 && j==2 && sum==3)
        return true;
        
      if (i==1 && j==2 && sum==3)
        return true;
        
      if (i==2 && j==2 && sum==3)
        return true;
        
      if (j==2)
        sum=0;
    }
  }
  
  for (int i=0; i<3; i++) // checks diagonal going from top left to bottom right
  {
    for (int j=0; j<3; j++)
    {
      if (i==0 && j==0)
      {
         sum+=score.giveValue(i,j);
      }
      
      if (i==1 && j==1)
      {
        sum+=score.giveValue(i,j);
      }
      
      if (i==2 && j==2)
      {
        sum+=score.giveValue(i,j);
        if (sum==3)
        {
          sum=0;
          return true;
        }
      }
    }
  }
  sum=0;
  
  for (int i=0; i<3; i++) // checks diagonal from top right to bottom left
  {
    for (int j=0; j<3; j++)
    {
      if (i==0 && j==2)
      {
         sum+=score.giveValue(i,j);
      }
      
      if (i==1 && j==1)
      {
        sum+=score.giveValue(i,j);
      }
      
      if (i==2 && j==0)
      {
        sum+=score.giveValue(i,j);
        if (sum==3)
        {
          sum=0;
          return true;
        }
      }
    }
  }
  sum=0;
  
  return false;
  
}

boolean OisWinner() // checks if O is winner
{
  int sum=0;
  for (int i=0; i<3; i++)  // this loop checks the horizontals for O
  {
    for (int j=0; j<3; j++)
    {
      sum+=score.giveValue(i,j);
      if (i==0 && j==2 && sum==15)
        return true;
        
      if (i==1 && j==2 && sum==15)
        return true;
        
      if (i==2 && j==2 && sum==15)
        return true;
        
      if (j==2)
        sum=0;
    }
  }
  
  for (int i=0; i<3; i++)  // this loop checks the verticals for O
  {
    for (int j=0; j<3; j++)
    {
      sum+=score.giveValue(j,i);
      if (i==0 && j==2 && sum==15)
        return true;
        
      if (i==1 && j==2 && sum==15)
        return true;
        
      if (i==2 && j==2 && sum==15)
        return true;
        
      if (j==2)
        sum=0;
    }
  }
  
  for (int i=0; i<3; i++) // checks diagonal going from top left to bottom right
  {
    for (int j=0; j<3; j++)
    {
      if (i==0 && j==0)
      {
         sum+=score.giveValue(i,j);
      }
      
      if (i==1 && j==1)
      {
        sum+=score.giveValue(i,j);
      }
      
      if (i==2 && j==2)
      {
        sum+=score.giveValue(i,j);
        if (sum==15)
        {
          sum=0;
          return true;
        }
      }
    }
  }
  sum=0;
  
  for (int i=0; i<3; i++) // checks diagonal from top right to bottom left
  {
    for (int j=0; j<3; j++)
    {
      if (i==0 && j==2)
      {
         sum+=score.giveValue(i,j);
      }
      
      if (i==1 && j==1)
      {
        sum+=score.giveValue(i,j);
      }
      
      if (i==2 && j==0)
      {
        sum+=score.giveValue(i,j);
        if (sum==15)
        {
          sum=0;
          return true;
        }
      }
    }
  }
  sum=0;
  
  return false;
}
