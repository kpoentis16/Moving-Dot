#include <MeggyJrSimple.h>
int xcoord = 0;
int ycoord = 0;

void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{ 
  
  DrawPx(xcoord,ycoord,Red);
  CheckButtonsPress();
  if(Button_Left)
    xcoord--;
  if(Button_Right)
    xcoord++;
  if(Button_Up)
    ycoord++;
  if(Button_Down)
    ycoord--;
   DisplaySlate();
   delay(100);
   ClearSlate();
  

  if(xcoord>7)
    xcoord=0;
  if(xcoord<0)
    xcoord=7;
  if(ycoord>7)
    ycoord=0;
  if(ycoord<0)
    ycoord=7;
  
  }
  

