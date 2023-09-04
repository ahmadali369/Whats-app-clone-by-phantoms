import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/cameraPreview.dart';
import 'package:whatsapp_clone/statusPage.dart';

import 'chatPage.dart';
late List<CameraDescription> _cameras;

Future<void> main() async{
    WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Whats App'),
      //   home: ChatPage(),
      //   home: StatusPage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int color1 = 0;
  int color2 = 0;
  int color3 = 0;


  @override
  Widget build(BuildContext context) {
    final Widget = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white12,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: Height * .18,
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Whats App",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: Widget * 0.25,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraApp(cameras: _cameras,)));


                                },
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white70,
                                  size: 25,
                                ),
                              ),
                              Icon(
                                Icons.search,
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
                
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.people_alt,
                      color: Colors.white70,
                      size: 25,
                    ),

                  TextButton(
                    onPressed: (){

                      setState(() {


                        color1 = 1;
                        color2 = 0;
                        color3 = 0;

                      });


                    },
                    child: Text("Chats", style: TextStyle(
                        color: color1 == 1? Colors.green: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),),
                  ),
                    TextButton(
                      onPressed: (){

                        setState(() {
                          color1 = 0;
                          color2 = 1;
                          color3 = 0;

                        });


                      },

                      child: Text("Status", style: TextStyle(
                          color: color1 == 1? Colors.green: Colors.white70,
                          fontWeight: FontWeight.bold,
                        fontSize: 18),),
                  ),
                  TextButton(
                    onPressed: (){
                      setState(() {
                        color1 = 0;
                        color2 = 0;
                        color3 = 1;

                      });

                    },


                    child: Text("Calls", style: TextStyle(
                        color: color1 == 1? Colors.green: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),),
                  ),

                ],),





                

              ],
            ),
          ),


          Container(
            height: Height * .82,
            child: SingleChildScrollView(child: Column(children: [

              Chat(),
              Chat(),
              Chat(),
              Chat(),
              Chat(),

              Chat(),
              Chat(),
              Chat(),
              Chat(),
              Chat(),




            ],),),
          ),





        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.message_outlined),
      ),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: Height * .1,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: (){


                },
                child: CircleAvatar(radius: 30,backgroundColor: Colors.white70)),


            TextButton(
              onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatPage()));
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatPage()));





              },
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("Flutter Team", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    Row(
                      children: [

                        Icon(Icons.check,color: Colors.white70,size: 18,),
                        Text("This is a Sample Text for Example", style: TextStyle(fontSize: 12, color: Colors.white70),),
                      ],
                    )


                  ],),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                    Text("14/06/2023", style: TextStyle(fontSize: 12, color: Colors.white70),),
                      Icon(
                        Icons.add,
                        color: Colors.white70,
                        size: 18,
                      ),


                  ],),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}


