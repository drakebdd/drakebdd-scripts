// начало

// глобальные переменные

int fanCtrlPin = 3; // выходы на драйвер вентилятора D3
int led = 9; //лампочка
int light=0;//яркость лампочки
int i=0;
volatile float time = 0;
volatile float time_last = 0;
volatile int rpm_array[5] = {0,0,0,0,0};

int freq = 40; //начальная частота
int val=0;//обьявление переменной для считывания

int sensorPin = 2; //тахометр
int sensorValue = 0; //обьявление переменной тахометра



//=====================================
void setup() {
//=====================================  
  Serial.begin(9600);// включение монитора
// установка частоты PWM 
   TCCR2B = (TCCR2B & 0xF8) | 0x01; // timer 2 (pins 11,3)
  pinMode(fanCtrlPin, OUTPUT); // назначаем контакт как выход
   //Digital Pin 2 Set As An Interrupt
 attachInterrupt(0, fan_interrupt, FALLING);  
}

void loop() {
  i=0;
  freq = 10;
 analogWrite(fanCtrlPin, freq); 
 
  int rpm = 0;
  
  while(1){  
  
     if (Serial.available()) {
  
    freq = Serial.parseInt();
  
    analogWrite(fanCtrlPin, freq);
  }
  delay(100);
  
  
   
Serial.println(rpm);
//Serial.print("    ");
//Serial.print(time);
//Serial.print("    ");
//Serial.println(time_last);

  if(time > 0)
  {
    //5 Sample Moving Average To Smooth Out The Data
      rpm_array[0] = rpm_array[1];
      rpm_array[1] = rpm_array[2];
      rpm_array[2] = rpm_array[3];
      rpm_array[3] = rpm_array[4];
      rpm_array[4] = 60*(1000000/(time*2));    
    //Last 5 Average RPM Counts Eqauls....
      rpm = (rpm_array[0] + rpm_array[1] + rpm_array[2] + rpm_array[3] + rpm_array[4]) / 5;
  }
 
 }



}



//Capture The IR Break-Beam Interrupt
void fan_interrupt()
{
   time = (micros() - time_last); 
   time_last = micros();
}


