import 'package:flutter/material.dart';

import 'chatPage.dart';

void main() {
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            height: Height * .15,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white70,
                                size: 25,
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

                  Text("Chats", style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),),
                  Text("Status", style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),),
                  Text("Calls", style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),),

                ],),





                

              ],
            ),
          ),


          SingleChildScrollView(child: Column(children: [

            Chat(),
            Chat(),

            Chat(),
            Chat(),
            Chat(),
            Chat(),
            Chat(),




          ],),),





        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _incrementCounter,
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

    return TextButton(
      onPressed: (){},
      child: Container(
        width: double.infinity,
        height: Height * .1,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(radius: 30,backgroundColor: Colors.white70),
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
      ),
    );
  }
}


