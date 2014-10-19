
#include<Servo.h>

Servo miServo;

const int pinPot = 0;
const int pinServo = 2;

const int pulsoMin = 650;  //pulsos en us para girar el servo a 0º
const int pulsoMax = 2550; //pulso para girar el servo
//buscar el de nuestro servo , valores max y min


int valor;
int angulo;

void setup(){
  
  miServo.attach(pinServo, pulsoMin, pulsoMax);//bastaria solo conel pinServo
  //las entradas analogicas se configuran auto

}
void loop(){
  
  valor = analogRead(pinPot); //leemos valor del potenciometro
  angulo = map(valor, 0, 1023, 0, 180); //convertimos el valor a un angulo
  //revisar el sentido de giro horario o antihorario
  //cambiar 180 a 0 y viceversa
  
  miServo.write(angulo); // 
  delay(20); //tiempo en milisegundos para darle tiempo al servo a desplazarse
  

}

