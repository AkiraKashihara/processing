int stmi,getmi,maxhigh,counts;
float sec,v0,a,x0,y,v,Y;
void setup(){
  size(800,300);
  stmi = millis();
  //settings
  a = 9.8;//m/s^2
  v0 = 0; //m/s
  x0 = 2;//m
  maxhigh = 3;//m
}

void draw(){
  //draw graph
  background(255);
  line(50,0,50,300);
  line(0,200,800,200);
  if(Y>195 && counts > 10){
    x0 = y;
    stmi = millis();
    v0 = -v;
    counts = 0;
  }
  //get time
  getmi = millis() - stmi;
  sec = getmi/1000.0;
  //put data
  y = x0 +v0*sec - a/2*sec*sec;
  v = v0 - a*sec;
  Y = map(y,0,maxhigh,200,0);
  ellipse(100,Y,10,10);
  print(counts+" "+y+" "+v+" "+Y+" "+sec+"\n");
  counts++;
}
