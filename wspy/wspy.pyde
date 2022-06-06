add_library('webSockets')
import base64

txt = ''
def setup():
    size(200,200)
    ws = WebsocketServer(this,19998,"")
    
def draw():
    background(0)
    #print(len(txt))
    
def webSocketServerEvent(msg):
    global txt
    #print(len(msg))
    print(type(msg))
    #fl = open("textTest.txt","wb")
    #fl.write(str(msg))
    #fl.close()
    
    if msg == "finish_":
        print(len(txt),1)
        file = open("textTest.txt","w")
        file.write(txt)
        file.close()
        print(txt[0:5])
    else:
        txt += msg
        print(len(txt),txt[0:3])
        
