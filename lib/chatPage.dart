import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatDetails.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final Widget = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.black,
              height: Height * 0.10,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                        TextButton(
                          onPressed: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatDetails()));



                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.white70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Flutter Team",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: Widget * 0.25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.white70,
                              size: 25,
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.white70,
                              size: 25,
                            ),
                            Icon(
                              Icons.settings,
                              color: Colors.white70,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: Height * .8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Container(color: Colors.green,child: Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text("This is an example msg",style: TextStyle(color: Colors.white, ),),
                    // )),

                    SendingMsg(),
                    ReceivingMsg(),
                    SendingMsg(),
                    ReceivingMsg(),
                    SendingMsg(),
                    ReceivingMsg(),

                  ],
                ),
              ),
            ),
            Container(
              height: Height * .1,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Widget * .85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                        color: Colors.white24),
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Message",
                                  hintStyle: TextStyle(
                                      color: Colors.white54, fontSize: 22)),
                            ),
                          ),
                          width: Widget * .65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(80),
                              ),
                              color: Colors.transparent),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.white54,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.camera_alt,
                          color: Colors.white54,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class SendingMsg extends StatelessWidget {

  const SendingMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "This msg is for testing purpose",

                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                // topRight: Radius.circular(40),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),



              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReceivingMsg extends StatelessWidget {
  const ReceivingMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "This msg is for testing purpose",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                // topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),



              ),
            ),
          ),
        ),
      ],
    );
  }
}
