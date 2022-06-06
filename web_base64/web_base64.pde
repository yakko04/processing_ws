import websockets.*;
import javax.xml.bind.DatatypeConverter;
WebsocketServer ws;

void setup() {
  size(200,200);
  
  ws = new WebsocketServer(this,19998,"");
  
}

void draw() {

}

void webSocketServerEvent(String msg) {
  println(msg);
  
}
