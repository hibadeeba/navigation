import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'textfeild!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'نسخ النص و نقله'),
      debugShowCheckedModeBanner: false,
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
  final TextEditingController _controller=TextEditingController();
   final TextEditingController _outcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 235, 202, 202),
      appBar: AppBar(
      
        title: Text('TextEditingController'),
        backgroundColor:Colors.teal,

      ),
      body:Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
            controller:_controller,
            decoration:InputDecoration(
              labelText:'Enter any thing to copy it',
              filled:true,
               fillColor:Color.fromARGB(255, 103, 126, 142),
              labelStyle:TextStyle(color:Colors.black),

              border:OutlineInputBorder(),
             
              ),
              style:TextStyle(color:Colors.black),
              
            ),
            SizedBox(height:22),
            ElevatedButton(
            onPressed:(){
              print('text entered :${_controller.text}');
              _outcontroller.text=_controller.text;
            },
            child:Text('print text'),
           ), 
           TextField(
            controller :_outcontroller,
            decoration:InputDecoration(
              labelText:' the text will appear here',
               filled:true,
               fillColor:Color.fromARGB(255, 103, 126, 142),
              labelStyle:TextStyle(color:Colors.black),

              border:OutlineInputBorder(),
              ),
             style:TextStyle(color:Colors.black),

              readOnly:true,
           ) 
          ]
          ),      
        ),
      ); 
  }
}