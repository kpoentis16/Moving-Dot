#include <MeggyJrSimple.h>
int xcoord = 0;        //declares that that initial starting point of the dot is (0,0)
int ycoord = 0;

void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{ 
  DrawWalls();
  
  DrawPx(xcoord,ycoord,Red);
  CheckButtonsPress();
  if(Button_Left)
  {
    if(ReadPx(xcoord-1,ycoord)!=Blue)
     xcoord--; 
  }                            //allows left button to move the dot left as long as it is not Blue
   
  if(Button_Right)  
  {
    if(ReadPx(xcoord+1,ycoord)!=Blue)
    xcoord++;
  }
  
  if(Button_Up)
  {
    if(ReadPx(xcoord,ycoord+1)!=Blue)
    ycoord++;
  }
  
  if(Button_Down) 
  {
    if(ReadPx(xcoord,ycoord-1)!=Blue)  
    ycoord--;
  }
   DisplaySlate();
   delay(100);
   ClearSlate();
  

  if(xcoord>7)        //allows the dot to loop around the meggy screen  
    xcoord=7;
  if(xcoord<0)
    xcoord=0;
  if(ycoord>7)
    ycoord=7;
  if(ycoord<0)
    ycoord=0;
  
  
  }
  

  void DrawWalls()
  {
    DrawPx(1,1,Blue);
    DrawPx(1,2,Blue);
    DrawPx(1,3,Blue);
  
  }
  
  
