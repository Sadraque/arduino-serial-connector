import processing.serial.*; //library for use serial comunication 
  
  boolean stscnt = true; //status of the serial conect with the Arduino
  String port = "COM5"; //serial port
  Serial arduino; //object serial
  int rate = 9600; //baude rate
 
void setup(){
  
  conectAduino();
}

void draw(){

}

//conection with the Arduino
void conectAduino(){
  
 try{
     println("Conecting..."); //message
     arduino = new Serial(this, port, rate); //initialize the serial object and open the conection with the serial port 
 }
 catch(Exception e){
     stscnt = false;
     println("Connect failed! " +e.getMessage()); //in case of error, send the error message   
 }
 finally{
    if(stscnt == true){
     println("Successfully connected! " +"Port: " +port); //message
    }
 } 
}
