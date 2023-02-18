private double fractionLength = .85;
private int smallestBranch = 11;
private double branchAngle = .4;  
public void setup()
{  
  background(90, 90, 195);
  size(900, 740);    
  noLoop();
}
public void draw()
{  
  strokeWeight(5);
  stroke(131, 74, 58);  
  line(450, 740, 450, 500);  
  drawBranches(450, 500, 100, 3*Math.PI/2);
}
public void drawBranches(int x, int y, double branchLength, double angle)
{  
  double a1 = angle+branchAngle;
  double a2 = angle-branchAngle;
  branchLength*=fractionLength;
  int endX1=(int)(branchLength*Math.cos(a1)+x);
  int endY1=(int)(branchLength*Math.sin(a1)+y);
  int endX2=(int)(branchLength*Math.cos(a2)+x);
  int endY2=(int)(branchLength*Math.sin(a2)+y);
  if (branchLength>45) {
    stroke(131, 74, 58);  
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
  } else {
    //stroke((int)(Math.random()*200)+90,0,(int)(Math.random()*80));  
    stroke((int)(Math.random()*255)+180,120,(int)(Math.random()*150)+70);  
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
  }
  if (branchLength>smallestBranch) {
    //if(branchLength<100){
    //stroke(131, 74, 58);  
    //drawBranches(endX1, endY1, branchLength, a1);
    //drawBranches(endX2, endY2, branchLength, a2);
    //}
    //else{
    drawBranches(endX1, endY1, branchLength, a1); 
    //ellipse(endX1,endY1,1,45);
    drawBranches(endX2, endY2, branchLength, a2);
    //}
  }
}



