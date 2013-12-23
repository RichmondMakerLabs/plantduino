#include <Servo.h>

Servo myservo; // create servo object to control a servo

int potpin = 0; // analog pin used to connect the moisture sensor
int val; // variable to read the value from the analog pin
int num = 0;
void setup() {
Serial.begin(9600); //starts serial connection
myservo.attach(9); // attaches the servo on pin 9 to the servo object
}
void loop() {
val = analogRead(potpin);
if(val <= 750 && num == 0){
myservo.write(0);
num = num + 1;
}else if(val > 750 && num == 1){
myservo.write(180);
num = num – 1;
}else{
}
Serial.println(val);
num == 0;
}
