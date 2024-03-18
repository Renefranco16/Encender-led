import processing.serial.*;
Serial puerto;
int estadoLed = 0;

void setup() {
  size(200, 200);
  puerto = new Serial(this, Serial.list()[4],9600);
}

void draw() {
  background(255);
  fill(255,0,0);
  ellipse(width/2, height/2, 50, 50);
  if (estadoLed == 1){
    fill(#F4FFA5);
    ellipse(width/2, height/2, 45, 45);
  }
}

void mousePressed() {
  if (estadoLed == 0){
    estadoLed = 1;
    puerto.write('1');
  }else{
    estadoLed = 0;
    puerto.write('0');
  }
}
