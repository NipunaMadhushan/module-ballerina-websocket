import ballerina/websocket as ws;

listener ws:Listener hl = check new(21001);

service /basic/ws on hl {
   resource isolated function get abc() returns ws:Service|ws:Error {
       return new WsService();
   }
}

service class WsService {
    *ws:Service;
    remote function onOpen(ws:Caller caller) {
    }
}
