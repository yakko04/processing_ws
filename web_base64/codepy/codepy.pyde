add_library('webSockets')

import base64

txt = ""

def setup():
    size(200,200)
    
    ws = WebsocketServer(this,19998,"")
    
def draw():
    background(0)

def webSocketServerEvent(msg):
    print(msg)
    txt += msg
    fi = open("tstxt.txt","a")
    fi.write(msg)
    fi.close()
