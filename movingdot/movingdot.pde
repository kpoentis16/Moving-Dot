#include <MeggyJrSimple.h>
int xcoord = 0;        //declares that that initial starting point of the dot is (0,0)
int ycoord = 0;

void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{ 
  
  DrawPx(xcoord,ycoord,Red);
  CheckButtonsPress();
  if(Button_Left)              //allows left button to move the dot left
    xcoord--;
  if(Button_Right)            //allows right button to move the dot left
    xcoord++;
  if(Button_Up)               //allows up button to move the dot up
    ycoord++;
  if(Button_Down)            //allows down button to move the dot down
    ycoord--;
   DisplaySlate();
   delay(100);
   ClearSlate();
  

  if(xcoord>7)        //allows the dot to loop around the meggy screen 
    xcoord=0;
  if(xcoord<0)
    xcoord=7;
  if(ycoord>7)
    ycoord=0;
  if(ycoord<0)
    ycoord=7;
  
  }
  

