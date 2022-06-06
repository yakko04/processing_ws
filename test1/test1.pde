import websockets.*;

WebsocketServer ws;
int now;
float x,y;
String test = "";
void setup(){
  size(200,200);
  
  //Initiates the websocket server, and listens for incoming connections on ws://localhost:8025/john
  ws= new WebsocketServer(this,19998,"");
  now=millis();
  x=0;
  y=0;
}

void draw(){
  background(0);
  ellipse(x,y,10,10);
 
  
  //println(test);
  //print(test.length());
  /*
  //Send message to all clients very 5 seconds
  if(millis()>now+5000){
    ws.sendMessage("hello,message");
    now=millis();
  } */
}

//This is an event like onMouseClicked. If you chose to use it, it will be executed whenever a client sends a message
void webSocketServerEvent(String msg){
 println(msg);
 test += msg;
 x=random(width);
 y=random(height);
}
