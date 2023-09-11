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
          height: Height * .9,
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





                Row(
                  children: [
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



                TextButton(
                  onPressed: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Text("Media, links, and docs",style: TextStyle(color: Colors.white, fontSize: 18),),

                      Container(child: Row(
                        children: [
                          Text("10",style: TextStyle(color: Colors.white70, fontSize: 15),),

                          Icon(Icons.arrow_forward_ios, color: Colors.white70,size: 15,),
                        ],
                      )),

                    ],
                  ),
                ),


                ChatDetailsTilesButton(type: 1,),
                ChatDetailsTilesButton(type: 2,),
                ChatDetailsTilesButton(type: 3,),
                ChatDetailsTilesButton(type: 4,),
                ChatDetailsTilesButton(type: 5,),
                ChatDetailsTilesButton(type: 6,),





                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    Text("31 participants",style: TextStyle(color: Colors.white70, fontSize: 14),),
                    Icon(Icons.search, size: 25,color: Colors.white70,),

                  ],),
                ),





                ParticipantsWidght(name: "M. Ali",),
                ParticipantsWidght(name: "Anvar Ali",),
                ParticipantsWidght(name: "Sobia",),
                ParticipantsWidght(name: "Shanze Abbas",),
                ParticipantsWidght(name: "M Arbaaz",),


                Container(child: const Column(children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(children: [
                      Icon(Icons.exit_to_app, size: 30,color: Colors.red,),

                      SizedBox(width: 10,),

                      Text("Exit group",style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),


                    ],),
                  ),

                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(children: [
                      Icon(Icons.report_gmailerrorred, size: 30,color: Colors.red,),

                      SizedBox(width: 10,),

                      Text("Report Group",style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),


                    ],),
                  ),

                ],),)




              ],
            ),
          ),
        ),














      ], ),
    );
  }
}


class ChatDetailsTilesButton extends StatefulWidget {
  ChatDetailsTilesButton({Key? key,required this.type}) : super(key: key);

  final int type;

  @override
  State<ChatDetailsTilesButton> createState() => _ChatDetailsTilesButtonState();
}

class _ChatDetailsTilesButtonState extends State<ChatDetailsTilesButton> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: TextButton(
        onPressed: (){


        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [

            if(widget.type == 1)...{

              Icon(Icons.add_alert_rounded, size: 25,color: Colors.white70,),
              SizedBox(width: 15,),
              Text("Mute notifications",style: TextStyle(color: Colors.white, fontSize: 20),),


            },

            if(widget.type == 2)...{

              Icon(Icons.music_note, size: 25,color: Colors.white70,),
              SizedBox(width: 15,),
              Text("Custom notifications",style: TextStyle(color: Colors.white, fontSize: 20),),


            },
            if(widget.type == 3)...{

              Icon(Icons.image, size: 25,color: Colors.white70,),
              SizedBox(width: 15,),
              Text("Media visibility",style: TextStyle(color: Colors.white, fontSize: 20),),


            },
            if(widget.type == 4)...{

              Icon(Icons.lock, size: 25,color: Colors.white70,),
              SizedBox(width: 15,),
              Text("Encryption",style: TextStyle(color: Colors.white, fontSize: 20),),
              // Text("Messages and calls are end-to-end encrypted. Tap to learn more.",style: TextStyle(color: Colors.white, fontSize: 20),),



            },
            if(widget.type == 5)...{

              Icon(Icons.timelapse, size: 25,color: Colors.white70,),
              SizedBox(width: 15,),
              Text("Disappearing messages",style: TextStyle(color: Colors.white, fontSize: 20),),


            },
            if(widget.type == 6)...{

              Icon(Icons.lock_open_outlined, size: 25,color: Colors.white70,),
              SizedBox(width: 15,),
              Text("Chat lock",style: TextStyle(color: Colors.white, fontSize: 20),),


            },





          ],),
        ),
      ),
    );
  }
}


class ParticipantsWidght extends StatefulWidget {
   ParticipantsWidght({Key? key, required this.name}) : super(key: key);
    final String name;



  @override
  State<ParticipantsWidght> createState() => _ParticipantsWidghtState();
}

class _ParticipantsWidghtState extends State<ParticipantsWidght> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white24,
            child: Icon(Icons.person, color: Colors.white70,size: 35,),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("~ " + widget.name,style: TextStyle(color: Colors.white, fontSize: 20),),
              Text("Hey there! I am using Wh...",style: TextStyle(color: Colors.white70, fontSize: 16),),


            ],),
          )



        ],),
      ),
    );
  }
}

