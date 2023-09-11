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
          height: Height * .10,
          color: Colors.transparent,
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

              // CircleAvatar(
              //   radius: 18,
              //   backgroundColor: Colors.white70,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10),
              //   child: Text(
              //     "Flutter Team",
              //     style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white),
              //   ),
              // ),
            ],
          ),
        ),


        Container(
          height: Height * .8,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.people_alt, color: Colors.white70,size: 70,),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("TBW (BS SE 5B)",style: TextStyle(color: Colors.white, fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Group - 31 participants",style: TextStyle(color: Colors.white70, fontSize: 16),),
                ),


                SizedBox(height: Height * 0.04,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(),
                  Column(children: [
                    
                    Icon(Icons.waves_rounded, size: 30,color: Colors.green,),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Voice Chat",style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),),
                    ),

                    
                  ],),
                    Column(children: [

                      Icon(Icons.video_call, size: 30,color: Colors.green,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Video",style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),),
                      ),


                    ],),
                    Column(children: [

                      Icon(Icons.search, size: 30,color: Colors.green,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Search",style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),),
                      ),


                    ],),
                    SizedBox(),


                  ],),





                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Add group discription",style: TextStyle(color: Colors.green, fontSize: 18,),),
                      SizedBox(height: Height * .01,),
                      Text("Created by M Ali Fast Uni, 23/08/2023, 2:51 pm",style: TextStyle(color: Colors.white70, fontSize: 14),),
                    ],
                  ),
                ),







              ],
            ),
          ),
        ),












      ], ),
    );
  }
}
