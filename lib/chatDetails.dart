import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    final Widget = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Column(children: [
        Container(
          height: Height * .12,
          color: Colors.black,
          child: Row(
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


        Container(
          height: Height * .8,
          child: SingleChildScrollView(
            child: Column(
              children: [





              ],
            ),
          ),
        ),












      ], ),
    );
  }
}
