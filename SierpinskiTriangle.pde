int size = 0;
int num;
public void setup()
{
  background(0);
  size(600, 600);
}
public void draw()
{
  num = (int) (Math.random()*256);
   fill (num,num,num);
   sierpinski(0,600,size);
}
public void mouseDragged()
{
  mouseX = mouseY;
  if( mouseX <300) {
  size = size +5;
  } else if (mouseX>300) {
   size = size -1;
  } 
 if (size >600) {
   size =600;
 }
}  
public void sierpinski(int x, int y, int len) 
{
  if( len<=20) {
  triangle(x, y, x+len/2, y-len, x+len, y);
  } 
  else {
    sierpinski(x,y,len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
  }
}
