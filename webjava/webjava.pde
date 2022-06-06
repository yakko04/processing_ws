import websockets.*;
import javax.xml.bind.DatatypeConverter;
import processing.video.*;


WebsocketServer ws;
String txt = "";

void setup() {
  size(200,200);
  
  ws = new WebsocketServer(this,19998,"");
  
}

void draw() {
  background(0);
}

void webSocketServerEvent(String msg) {
  println(msg);
  if (msg.equals("finish_")) {
    //println(txt.length());
    byte[] origB = DatatypeConverter.parseBase64Binary(txt); 
  } else {
    txt += msg;
  }
}
